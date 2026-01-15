import 'package:fitness/core/routing/routes.dart';
import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/core/widgets/botton_widget.dart';
 import 'package:fitness/feature/profile/controller/get_user_Info/get_user_info_cubit.dart';
import 'package:fitness/feature/profile/ui/widget/appBar_widget.dart';
import 'package:fitness/feature/profile/ui/widget/image_widget.dart';
import 'package:fitness/feature/profile/ui/widget/info.dart';
import 'package:fitness/feature/profile/ui/widget/setting_wedgit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkGray,
      body: SafeArea(
          child: BlocBuilder<GetUserInfoCubit, GetUserInfoState>(
            builder: (context, state) {
if(state is GetUserInfoFailure){
  return Text(" state.message");
}
else if(state is GetUserInfoSucess){  


              return Center(
                      child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                        child:
                         Column(
                      children: [
                        AppbarWidget(),
                        //ImageWidget(image: state.user.photo??"https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Unknown_person.jpg/813px-Unknown_person.jpg",), 
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          state.user.username??"",
                          style: TextStyles.font15WhiteMedium,
                        ),
                        Text(
                          state.user.email??"",
                          style: TextStyles.font15WhiteMedium,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Info(
                              iconData: Icons.line_weight,
                              number: state.user.weight??"",
                              info: 'Weight',
                              measurement: '${state.user.weight} kg',
                            ),
                            Info(
                              iconData: Icons.height,
                              number: state.user.height??"",
                              info: 'Height',
                              measurement: '${state.user.height}  Fit',
                            ),
                            Info(
                              iconData: Icons.photo_size_select_actual_rounded,
                              number: state.user.age??"",
                              info: 'age    ',
                              measurement:  '${state.user.age} years',
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, Routes.edieProfile);
                            },
                            child: SettingWedgit(
                              title: 'Edit Profile',
                              iconData: Icons.person,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 325,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: ColorsManager.lightGray,
                          ),
                          child: ListTile(
                              leading: Icon(
                                Icons.notification_add,
                                size: 25,
                                color: ColorsManager.mainYellow,
                              ),
                              title: Text(
                                "Notification",
                                style: TextStyles.font16WhiteMedium,
                              ),
                              trailing: SizedBox(
                                  height: 18,
                                  width: 30,
                                  child: Switch(
                                    value: light,
                                    onChanged: (value) {
                                      setState(() {
                                        light = value;
                                      });
                                    },
                                    activeColor: ColorsManager.mainYellow,
                                  ))),
                        ),
                        //  ),
                      
                        SizedBox(
                          height: 5,
                        ),
                        SettingWedgit(
                          title: 'Setting',
                          iconData: Icons.settings,
                        ),
                        BottonWidget(
                          onTap: () {context.read<GetUserInfoCubit>().signOut();
                          Navigator.pushReplacementNamed(context, Routes.loginScreen);
                          },
                          title: 'Logout',
                          width: 325,
                        )
                      ],
                              )),
              )
              );
          
}
else {
  return CircularProgressIndicator();
}
            },
          ),
          )
          
    );
  }
}
