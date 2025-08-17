import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/core/widgets/botton_widget.dart';
import 'package:fitness/feature/profile/controller/cubit/edit_profile_cubit.dart';
import 'package:fitness/feature/profile/ui/widget/text_editingwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String ?name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkGray,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: context.read<EditProfileCubit>().formKey,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        color: Colors.white,
                        iconSize: 25,
                        icon: Icon(Icons.arrow_back_ios_new),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    SizedBox(
                      width: 80.w,
                    ),
                    Text(
                      "Edit Profile",
                      style: TextStyles.font20WhiteMedium,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Name",
                style: TextStyles.font14GrayRegular,
              ),
              SizedBox(
                height: 7.h,
              ),
              TextEditingwidget(
                  initialText: "mariam Emad",
                  secondText: "",
                  controller: context.read<EditProfileCubit>().nameController),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Weight",
                style: TextStyles.font14GrayRegular,
              ),
              SizedBox(
                height: 7.h,
              ),
              TextEditingwidget(
                initialText: "75 ",
                secondText: "Kg",
                controller: context.read<EditProfileCubit>().weightController,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "hight",
                style: TextStyles.font14GrayRegular,
              ),
              SizedBox(
                height: 7.h,
              ),
              TextFormField(controller: context.read<EditProfileCubit>().hightController ,
              onSaved: (newValue) {
                name=newValue;
              },
              ),
            /*
              TextEditingwidget(
                initialText: "150 ",
                secondText: "cm",
                controller: context.read<EditProfileCubit>().hightController,
              ),
              */
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Age",
                style: TextStyles.font14GrayRegular,
              ),
              SizedBox(
                height: 7.h,
              ),
              TextEditingwidget(
                initialText: "25  ",
                secondText: "Years",
                controller: context.read<EditProfileCubit>().ageController,
              ),
              SizedBox(
                height: 25.h,
              ),
              BottonWidget(
                onTap: () {context.read<EditProfileCubit>().saveEdit(
                  context.read<EditProfileCubit>().nameController.text,
                  context.read<EditProfileCubit>().ageController.text ,
                  context.read<EditProfileCubit>().weightController.text,
                  context.read<EditProfileCubit>().hightController.text,
                
                  );},
                title: 'Save Change',
                width: 340,
              )
            ],
          ),
        ),
      )),
    );
  }
}
