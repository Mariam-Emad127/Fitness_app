part of 'target_exersize_cubit.dart';

@freezed
class TargetExersizeState with _$TargetExersizeState {
  const factory TargetExersizeState.initial() = _Initial;
  const factory TargetExersizeState.targetListLoading() = TargetListLoading;
  const factory TargetExersizeState.targetListFailure(String messageFailure) =
      TargetListFailure;
  const factory TargetExersizeState.targetListSucess(List<String> targetList) =
      TargetListSucess;
}
