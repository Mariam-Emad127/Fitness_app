import 'package:fitness/core/theming/style.dart';
import 'package:fitness/feature/exersize_page/controller/cubit/exersizes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Exersizedetailblocbilder extends StatelessWidget {
  const Exersizedetailblocbilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExersizesCubit, ExersizesState>(
      builder: (context, state) {
         
        return state.maybeWhen(
          exersizeDetailSucess: (exresizeModel) =>  
             Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name :",
              style: TextStyles.font18YellowRegular,
            ),
            Text(
              exresizeModel.name??"",
              style: TextStyles.font14GrayRegular,
            ),
            SizedBox(height: 5,),
            Text(
              "Body Part :",
              style: TextStyles.font18YellowRegular,
            ),
            Text(
             exresizeModel.bodyPart??"",
              style: TextStyles.font14GrayRegular,
            ),
              SizedBox(height: 5,),
            Text(
              "Equipment :",
              style: TextStyles.font18YellowRegular,
            ),
            Text(
              exresizeModel.bodyPart??"",
              style: TextStyles.font14GrayRegular,
            ),
              SizedBox(height: 5,),
            Text(
              "Description :",
              style: TextStyles.font18YellowRegular,
            ),
            Text(
              exresizeModel.description??"",
              style: TextStyles.font14GrayRegular,
            ),
              SizedBox(height: 5,),

           
          ],
        ),
          exersizeLoading: () => CircularProgressIndicator(),
          exersizeFailure: (message) => Text(message),
          orElse: () {
          return Text( "Error");
        },);
    
      },
    );
  }
}
