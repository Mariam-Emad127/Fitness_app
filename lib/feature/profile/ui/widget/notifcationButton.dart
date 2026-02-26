 import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:flutter/material.dart';

class Notifcationbutton extends StatefulWidget {
  const Notifcationbutton({super.key});

  @override
  State<Notifcationbutton> createState() => _NotifcationbuttonState();
}

class _NotifcationbuttonState extends State<Notifcationbutton> {
    bool light = true;

  @override
  Widget build(BuildContext context) {
    return          Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
                    
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
                              ),
                            ),
                          ),
                        ),
    );

                  
  }
}