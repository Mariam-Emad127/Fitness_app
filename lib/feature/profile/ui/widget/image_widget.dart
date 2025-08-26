import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/widgets/string.dart';
import 'package:fitness/feature/profile/controller/get_user_Info/get_user_info_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
context.read<GetUserInfoCubit>().picimage();

      },
      child: CircleAvatar(
        radius: 40,
        backgroundColor: ColorsManager.mainYellow,
        child: Padding(
          padding: const EdgeInsets.all(2), // Border radius
          child: ClipOval(child: Image.network(AppStrings.unknowmimage)),
        ),
      ),
    );
  }
}
