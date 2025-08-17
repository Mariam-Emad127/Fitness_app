part of 'edit_profile_cubit.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState.initial() = _Initial;
  const factory EditProfileState.editSucsecc() = EditSucsecc;
  const factory EditProfileState.editFailure(String message) = EditFailure;
  const factory EditProfileState.editLoading() = EditLoading;

}
