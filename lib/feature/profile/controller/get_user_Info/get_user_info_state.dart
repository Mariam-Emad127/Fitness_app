part of 'get_user_info_cubit.dart';

@freezed
class GetUserInfoState with _$GetUserInfoState {
  const factory GetUserInfoState.initial() = _Initial;
  const factory GetUserInfoState.getUserInfoSucess(UserModel user) = GetUserInfoSucess;
  const factory GetUserInfoState.getUserInfoFailure(String message) = GetUserInfoFailure;
  const factory GetUserInfoState.getUserInfoLoading() = GetUserInfoLoading;




}
