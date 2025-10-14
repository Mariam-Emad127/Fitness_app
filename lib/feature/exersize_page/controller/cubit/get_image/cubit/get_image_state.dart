part of 'get_image_cubit.dart';

@freezed
class GetImageState with _$GetImageState {
  const factory GetImageState.initial() = _Initial;
  const factory GetImageState.imageSucess(Uint8List url) = ImageSucess;
  const factory GetImageState.imageFailure(String message) = ImageFailure;
  const factory GetImageState.imageLoading() = ImageLoading;
}
