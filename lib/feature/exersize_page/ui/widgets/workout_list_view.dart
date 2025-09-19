import 'package:fitness/core/helper/exersize_image.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/feature/exersize_page/controller/cubit/exersizes_cubit.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/exersize_image.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/info_widget.dart';
import 'package:fitness/feature/exersize_page/ui/widgets/start_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkoutListView extends StatelessWidget {
  const WorkoutListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExersizesCubit, ExersizesState>(
      buildWhen: (previous, current) =>
          current is ExersizeSucess || current is ExersizeFailure,
      builder: (context, state) {
   
        return state.maybeWhen(
          exersizeSucess: (exresizeModel) {
            return   
         ListView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: exresizeModel.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  ExersizeImage(path: exerciseImages[index]),
                  Positioned(
                      top: 20,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  //"Banish Back Fat ",
                                  exresizeModel[index].name??"", 
                                  style: TextStyles.font15WhiteMedium,
                                 overflow: TextOverflow.ellipsis,
                                         maxLines: 1,
                                
                                ),
                              ),
                              Text(
                                exresizeModel[index].bodyPart??"",
                                //"Training ",
                                style: TextStyles.font16WhiteSemiBold,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              InfoWidget(
                                title: " 500 Kacl",
                                icon: Icons.lock_clock,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              InfoWidget(
                                title: "  50 min",
                                icon: Icons.lock_clock_sharp,
                              ),
                            ],
                          ),
                          StartIcon()
                        ],
                      ))
                ],
              );
            });
    
          },
          
          orElse:()=> CircularProgressIndicator());
     
//}
/*
else if(state is ExersizeFailure) {
 return Scaffold(body: Container(child: Text(state.toString()),),);
}
else{
  return CircularProgressIndicator();
}
  */  
      },
    );
  }
}
