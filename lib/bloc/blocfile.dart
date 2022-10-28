import 'dart:async';

import 'package:cyberhawk/model/loginmodel.dart';
import 'package:cyberhawk/repositories/repositories.dart';
import 'package:cyberhawk/utilities/prefManager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  LoginBloc() : super(LoginInitial()) {
    on<VerifyPassword>(verifyPassword);
  }

  Future<FutureOr<void>> verifyPassword(
      VerifyPassword event, Emitter<LoginStates> emit) async {
    Autogenerated autogenerated;
    emit(Loading());

    Map map = {"phone": event.username, "password": event.password};
    await Future.delayed(Duration(seconds: 2));
    autogenerated =
        await Repository().checkPhoneNumber(url: '/user/login', data: map);

    if (autogenerated.status == true) {
      await PrefManager.setToken(autogenerated.token.toString());
      // autogenerated.token.toString();

      emit(LoginSuccess());
    } else if (autogenerated.status == false) {
      emit(LoginError(error: "Invalid credentials"));
    }
    // if (event.username == "abc" && event.password == "123") {
    //   emit(LoginSuccess());
    // } else {
    //   emit(LoginError(error: "Invalid credentials"));
    // }
  }
}

class LoginEvents {}

class VerifyPassword extends LoginEvents {
  final String? username, password;

  VerifyPassword({this.username, this.password});
}

class LoginStates {}

class LoginInitial extends LoginStates {}

class Loading extends LoginStates {}

class LoginSuccess extends LoginStates {}

class LoginError extends LoginStates {
  final String? error;
  LoginError({this.error});
}
