<<<<<<< Updated upstream
=======
import 'package:fitness/feature/exersize_page/controller/cubit/exersizes_cubit.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/shimmer_widget.dart';
>>>>>>> Stashed changes
import 'package:flutter/material.dart';

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
 
      exersizeLoading: () => ShimmerWidget(),
      orElse: () {return Text("rrro"); });

  },
)

  ],
)),

    );
>>>>>>> Stashed changes
  }
}