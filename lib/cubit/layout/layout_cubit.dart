import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/user_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:meta/meta.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  UserModel? userModel;
  void getMyDate()async{
   try{
     await FirebaseFirestore.instance.collection('Users').doc(Constants.userID!).get().then((value){
    userModel = UserModel.fromJson(data:value.data()!);
     });
     emit(GetMyDataSuccessState());
   }on FirebaseException catch (e){
     emit(GetMyDataFailedState());
   }
  }
}
