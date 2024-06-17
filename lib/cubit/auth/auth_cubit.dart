import 'dart:convert';

import 'package:e_commerce/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  Future<dynamic> register(
      {required String username,
      required String email,
      required String password}) async {
    try {
      emit(RegisterLoadingState());
      Response response = await http.post(Uri.parse('$baseUrl/register/'),
          body: {'username': username, 'email': email, 'password': password});
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        emit(RegisterSuccessState());
      } else {
        emit(RegisterFailState(message: data['message']));
      }
    } catch (e) {
      emit(RegisterFailState(message: e.toString()));
    }
  }
    Future<dynamic> login(
      {required String username,
      required String password}) async {
    try {
      emit(LoginLoadingState());
      Response response = await http.post(Uri.parse('$baseUrl/login/'),
          body: {'username': username, 'password': password});
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        emit(LoginSuccessState());
      } else {
        emit(LoginFailState(message: data['message']));
      }
    } catch (e) {
      emit(LoginFailState(message: e.toString()));
    }
  }
}
