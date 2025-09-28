 
import 'package:fitness/feature/exersize_page/controller/cubit/exersizes_cubit.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExersizeDetail extends StatelessWidget {
  const ExersizeDetail({super.key});

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
body: SafeArea(child: Column(

  children: [
BlocBuilder<ExersizesCubit, ExersizesState>(
 
  builder: (context, state) {
    return state.maybeWhen(
      imageSucess: (url) => 
      Image.memory(url),
    exersizeFailure: (message) => Text(message),
      exersizeLoading: () => ShimmerWidget(),
      orElse: () {return Text("rrro"); });

  },
)

  ],
)),

    );
   }
}