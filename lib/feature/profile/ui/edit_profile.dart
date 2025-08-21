import 'package:fitness/core/theming/color.dart';
import 'package:fitness/feature/profile/controller/cubit/edit_profile/edit_profile_cubit.dart';
 import 'package:fitness/feature/profile/ui/widget/edit_bloc_builder.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 
  class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkGray,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: context.read<EditProfileCubit>().formKey,
          child: EditBlocBuilder(  )
        ),

      )),
    );
  }

}
