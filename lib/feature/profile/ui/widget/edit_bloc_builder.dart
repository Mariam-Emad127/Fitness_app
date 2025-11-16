import 'package:fitness/core/theming/style.dart';
import 'package:fitness/core/widgets/botton_widget.dart';
import 'package:fitness/feature/profile/controller/cubit/edit_profile/edit_profile_cubit.dart';
import 'package:fitness/feature/profile/controller/get_user_Info/get_user_info_cubit.dart';
import 'package:fitness/feature/profile/ui/widget/text_editingwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditBlocBuilder extends StatefulWidget {
    

  const EditBlocBuilder({super.key,  });

  @override
  State<EditBlocBuilder> createState() => _EditBlocBuilderState();
}

class _EditBlocBuilderState extends State<EditBlocBuilder> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetUserInfoCubit, GetUserInfoState>(
  //  StreamBuilder<UserModel>(
  //stream: context.read<GetUserInfoCubit>().getUserData(),
//  builder: (context, snapshot) {
            builder: (context, state) {
              if (state is GetUserInfoFailure) {
                return Scaffold(body: Text(" state.message"));
              } else if (state is GetUserInfoSucess) {
                return Column(
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
                        initialText: state.user.username??"",
                        secondText: "",
                        controller:
                            context.read<EditProfileCubit>().nameController),
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
                      initialText: state.user.weight??"",
                      secondText: "Kg",
                      controller:
                          context.read<EditProfileCubit>().weightController,
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
                    TextEditingwidget(
                      initialText: state.user.height??"",
                      secondText: "cm",
                      controller:
                          context.read<EditProfileCubit>().hightController,
                    ),
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
                      initialText: state.user.age??"",
                      secondText: "Years",
                      controller:
                          context.read<EditProfileCubit>().ageController,
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    BottonWidget(
                      
                      onTap: () {
                      // widget.ontap;
                        saveChange(state.user.username??"", state.user.age,
                            state.user.weight, state.user.height);

                        setState(() {});
                         //emit(GetUserInfoState.getUserInfoSucess(updatedUser));

                        Navigator.pop(context);
                         context.read<GetUserInfoCubit>().getUserData();
                      },
                      title: 'Save Change',
                      width: 340,
                    )
                  ],
                );
              } else {
                return Text("Error");
              }
            

             },
          );
  }
  
  void saveChange(String name, String? age, String? weight, String? height) {
    context.read<EditProfileCubit>().saveEdit(
          context.read<EditProfileCubit>().nameController.text == ""
              ? name
              : context.read<EditProfileCubit>().nameController.text,
          context.read<EditProfileCubit>().ageController.text == ""
              ? age
              : context.read<EditProfileCubit>().ageController.text,
          context.read<EditProfileCubit>().weightController.text == ""
              ? weight
              : context.read<EditProfileCubit>().weightController.text,
          context.read<EditProfileCubit>().hightController.text == ""
              ? height
              : context.read<EditProfileCubit>().hightController.text,
        );
  }


}