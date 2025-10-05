 import 'package:fitness/feature/exersize_page/controller/cubit/exersizes_cubit.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/shimmer_widget.dart';
  import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 
class ExersizeDetail extends StatefulWidget {
  final String id;
   const ExersizeDetail({super.key, required this.id, 
  });

  @override
  State<ExersizeDetail> createState() => _ExersizeDetailState();
}

class _ExersizeDetailState extends State<ExersizeDetail> {
    @override
  void initState() {
               context.read<ExersizesCubit>().getImage( widget.id, "180");            
 
     super.initState();
  }
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
body: SafeArea(child: Column(

  children: [
 
    BlocBuilder<ExersizesCubit, ExersizesState>(
      builder: (context, state) {
        print(state);
        return state.maybeWhen(
            imageSucess: (url) => Image.memory(
                  url,
                  fit: BoxFit.cover,
                ),
            exersizeLoading: () => ShimmerWidget(),
            exersizeFailure: (message) {
              return Text(message);
            },
            orElse: () {
              return Center(child: CircularProgressIndicator());
            });
      },
    )
  
  ],
)),

    );
 
  }
}