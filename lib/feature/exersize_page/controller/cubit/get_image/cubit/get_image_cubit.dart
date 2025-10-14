import 'dart:async';
import 'dart:typed_data';

  import 'package:fitness/feature/exersize_page/data/repo/exersize_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_image_state.dart';
part 'get_image_cubit.freezed.dart';

class GetImageCubit extends Cubit<GetImageState> {
ExersizeHomeRepo exersizeHomeRepo;
  GetImageCubit(this.exersizeHomeRepo) : super(GetImageState.initial());

  FutureOr<void> getImage(String id,String resolution) async {
   
    emit(GetImageState.imageLoading());
    final response = await exersizeHomeRepo.getImage(id,resolution);
     response.fold((l) => emit(GetImageState.imageFailure(l.toString())),
        (r) {
       emit(GetImageState.imageSucess(r));
    });
  }
}
