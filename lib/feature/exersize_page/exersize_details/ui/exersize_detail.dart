 import 'package:fitness/core/theming/color.dart';
 import 'package:fitness/feature/exersize_page/controller/cubit/get_image/cubit/get_image_cubit.dart';
import 'package:fitness/feature/exersize_page/exersize_details/ui/wedgit/exersizeDetailBlocBilder.dart';
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
            //   context.read<ExersizesCubit>().getexersizeDetail ( widget.id);            
 //             context.read<ExersizesCubit>().getImage( widget.id, "180");            
 
     super.initState();

  }
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      backgroundColor: ColorsManager.darkBlue,
body: SafeArea(child: Padding(
  padding: const EdgeInsets.only(left: 30.0,top: 10),
  child: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     
        BlocBuilder<GetImageCubit, GetImageState>(
          builder: (context, state) {
             return state.maybeWhen(
                imageSucess: (url) => Container(
                 // color: Colors.white,
                  decoration: BoxDecoration(
                    color: ColorsManager.mainYellow,
                    borderRadius: BorderRadius.circular(10,),
                    border: Border.all(color: ColorsManager.mainYellow,width: 3)
                   // color: ColorsManager.mainYellow
                  ),
                  child: Image.memory(
                        url,
                        fit: BoxFit.cover,
                        height: 250,
                        width: 300,
                      ),
                ),
                imageLoading: () => ShimmerWidget(),
                imageFailure: (message) {
                  return Text(message);
                },
                orElse: () {
                  return Center(child: CircularProgressIndicator());
                });
          },
        ),
      
    SizedBox(height: 50,),
     Exersizedetailblocbilder()
      ],
    ),
  ),
)),

    );
 
  }
}