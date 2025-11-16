part of 'get_frinds_cubit.dart';

@freezed
class GetFrindsState with _$GetFrindsState {
  const factory GetFrindsState.initial() = _Initial;
  const factory GetFrindsState.getFrindsLoading() = GetFrindsLoading;
  const factory GetFrindsState.getFrindsFailure(String message) = GetFrindsFailure;
  const factory GetFrindsState.getFrindSucess(List<UserModel>users) = GetFrindSucess;


}
