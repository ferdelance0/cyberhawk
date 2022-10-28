import 'dart:async';
import 'package:cyberhawk/model/loginmodel.dart';
import 'package:cyberhawk/model/signupmodel.dart';
import 'package:cyberhawk/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigupBloc extends Bloc<SigupEvents, SignupStates> {
  SigupBloc() : super(LoginInitial()) {
    on<GetSignupEvent>(_getSignupEvent);
  }

  Future<FutureOr<void>> _getSignupEvent(
      GetSignupEvent event, Emitter<SignupStates> emit) async {
    SignupModel signupModel;
    emit(Fetching());

    Map map = {
      "role": event.role,
      "phone": event.phone,
      "password": event.password
    };
    signupModel =
        await Repository().signup(url: '/user/registration', data: map);

    if (signupModel.status == true) {
      emit(SignupSuccess());
    } else if (signupModel.status == false) {
      emit(SignupError(error: signupModel.msg));
    }
    // if (event.phone == "abc" && event.password == "123") {
    //   emit(SignupSuccess());
    // } else {
    //   emit(SignupError(error: "Invalid credentials"));
    // }
  }
}

class SigupEvents {}

class GetSignupEvent extends SigupEvents {
  final String? phone, password, role;

  GetSignupEvent({this.role, this.phone, this.password});
}

class SignupStates {}

class LoginInitial extends SignupStates {}

class Fetching extends SignupStates {}

class SignupSuccess extends SignupStates {}

class SignupError extends SignupStates {
  final String? error;
  SignupError({this.error});
}
