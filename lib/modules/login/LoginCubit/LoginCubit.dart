import 'package:flutter/material.dart';
import 'package:haya/modules/login/LoginCubit/LoginStates.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class LoginCubit extends Cubit<LoginStates>{
  LoginCubit() : super(LoginInitialStates());
  static LoginCubit get(context) => BlocProvider.of(context);
  IconData suffix = Icons.visibility_off_outlined;
  bool isPassword = true;
  void changeVisibility(bool isShow) {
    isPassword = !isPassword;
    isPassword
        ? suffix = Icons.visibility_off_outlined
        : suffix = Icons.remove_red_eye_outlined;
    emit(LoginPassWordIsShow());
  }
}