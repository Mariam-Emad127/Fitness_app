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
          exersizeDetailSucess: (exresizeModel) =>     Column(
          children: [
            Text(
              "Name",
              style: TextStyles.font14GrayRegular,
            ),
            Text(
              exresizeModel.name??"",
              style: TextStyles.font14GrayRegular,
            ),
            Text(
              "Body Part",
              style: TextStyles.font14GrayRegular,
            ),
            Text(
             exresizeModel.bodyPart??"",
              style: TextStyles.font14GrayRegular,
            ),
            Text(
              "Equipment",
              style: TextStyles.font14GrayRegular,
            ),
            Text(
              "Name",
              style: TextStyles.font14GrayRegular,
            ),
            Text(
              "Description",
              style: TextStyles.font14GrayRegular,
            ),
            Text(
              "Description",
              style: TextStyles.font14GrayRegular,
            ),
            Text(
              "instructions",
              style: TextStyles.font14GrayRegular,
            ),
            Text(
              "Description",
              style: TextStyles.font14GrayRegular,
            ),
          ],
        ),
          
          orElse: () {
          return CircularProgressIndicator();
        },);
    
      },
    );
  }
}
