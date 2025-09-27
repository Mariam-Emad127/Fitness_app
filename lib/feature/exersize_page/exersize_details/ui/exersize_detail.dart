import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitness/feature/exersize_page/controller/cubit/exersizes_cubit.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExersizeDetail extends StatelessWidget {
 // final String id;
  const ExersizeDetail({super.key,// required this.id
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SafeArea(child: Column(

  children: [
BlocBuilder<ExersizesCubit, ExersizesState>(
 
  builder: (context, state) {
    return state.maybeWhen(
      imageSucess: (url) =>  CachedNetworkImage(imageUrl:url ,),

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