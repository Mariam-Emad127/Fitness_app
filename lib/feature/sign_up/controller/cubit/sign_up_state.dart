part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.signUpLoading() = SignUpLoading;
  const factory SignUpState.signUpSucees() = SignUpSucees;
  const factory SignUpState.signUpFailuier(String message) = SignUpFailuier;



}
