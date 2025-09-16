part of 'exersizes_cubit.dart';

@freezed
class ExersizesState with _$ExersizesState {
  const factory ExersizesState.initial() = _Initial;
  const factory ExersizesState.exersizeSucess(List<ExersizeModel> exresizeModel) = ExersizeSucess;
  const factory ExersizesState.exersizeFailure(String message) = ExersizeFailure;
  const factory ExersizesState.exersizeLoading() = ExersizeLoading;
 //const factory ExersizesState.exersizeSucess() = _Initial;



}
