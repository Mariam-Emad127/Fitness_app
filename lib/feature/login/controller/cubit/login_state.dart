part of 'login_cubit.dart';


@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
    const factory LoginState.loginSucess() = LoginSucess;
  const factory LoginState.loginLoading() = LoginLoading;
  const factory LoginState.loginFailure(String message) = LoginFailure;

}

 