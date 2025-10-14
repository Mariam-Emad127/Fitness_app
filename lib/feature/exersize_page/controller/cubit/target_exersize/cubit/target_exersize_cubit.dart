import 'dart:async';

 import 'package:fitness/feature/exersize_page/data/repo/exersize_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'target_exersize_state.dart';
part 'target_exersize_cubit.freezed.dart';

class TargetExersizeCubit extends Cubit<TargetExersizeState> {
   ExersizeHomeRepo exersizeHomeRepo;

  TargetExersizeCubit(this.exersizeHomeRepo) : super(TargetExersizeState.initial());

    FutureOr<void> getTargetList() async {
    emit(TargetExersizeState.targetListLoading());
    final response = await exersizeHomeRepo.getTargetList();
    response.fold((l) => emit(TargetExersizeState.targetListFailure(l.toString())),
        (r) {
       emit(TargetExersizeState.targetListSucess(r));
    });
  }
  
}
