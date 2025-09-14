import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exersizes_state.dart';
part 'exersizes_cubit.freezed.dart';

class ExersizesCubit extends Cubit<ExersizesState> {
  ExersizesCubit() : super(ExersizesState.initial());
}
