import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:shared_preferences/shared_preferences.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  Future<dynamic> register(
      {required String userName,
      required String email,
      required String password}) async {
    try {
      emit(RegisterLoadingState());
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      if (userCredential.user?.uid != null) {
        await sendUserDateToFireStore(
            userName: userName,
            email: email,
            password: password,
            userID: userCredential.user!.uid);
        emit(RegisterSuccessState());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        emit(RegisterFailState(message: 'Email already in use'));
      }
    }
  }

  Future<void> sendUserDateToFireStore(
      {required String userName,
      required String email,
      required String password,
      required String userID}) async {
    UserModel userModel =
        UserModel(name: userName, email: email, id: userID, password: password);
    try {
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(userID)
          .set(userModel.toJson());
      emit(SuccessToSendUserDateToFireStore());
    } catch (e) {
      emit(FailedToSendUserDateToFireStore());
    }
  }

  void login({required String email, required String password}) async {
    try {
      emit(LoginLoadingState());
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (userCredential.user?.uid != null) {
        final sharedPref = await SharedPreferences.getInstance();
        await sharedPref.setString('id', userCredential.user!.uid);
        Constants.userID = sharedPref.getString('id');
        emit(LoginSuccessState());
      } else {}
    } on FirebaseAuthException catch (e) {
      emit(LoginFailState(message: e.toString()));
    }
  }
}
