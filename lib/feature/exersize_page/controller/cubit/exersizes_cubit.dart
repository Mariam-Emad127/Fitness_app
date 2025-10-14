import 'dart:async';
import 'package:dio/dio.dart';
 import 'package:fitness/feature/exersize_page/data/model/exresize_model.dart';
import 'package:fitness/feature/exersize_page/data/repo/exersize_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
  part 'exersizes_state.dart';
part 'exersizes_cubit.freezed.dart';

class ExersizesCubit extends Cubit<ExersizesState> {
  ExersizesCubit(this.exersizeHomeRepo, ) : super(ExersizesState.initial());
  ExersizeHomeRepo exersizeHomeRepo;
  List<ExersizeModel?>? exersizeModelList = [];

  FutureOr<void> getAllExersizes() async {
    emit(ExersizesState.exersizeLoading());
    try {
    final response = await exersizeHomeRepo.getexersize();
    response.fold((l) => emit(ExersizesState.exersizeFailure(l.toString())),
        (r) {
      emit(ExersizesState.exersizeSucess(r));
     } );
    }on DioException catch (e){print("$e Connection timeout, try again");}
  }



  FutureOr<void> getexersizeDetail(String id) async {
    emit(ExersizesState.exersizeLoading());
    final response = await exersizeHomeRepo.getexersizedettail(id);
    response.fold((l) => emit(ExersizesState.exersizeFailure(l.toString())),
        (r) {
      emit(ExersizesState.exersizeDetailSucess(r));
    });
  }


}