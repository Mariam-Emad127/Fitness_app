import 'package:fitness/core/helper/models/user.dart';
import 'package:fitness/feature/profile/ui/widget/info.dart';
import 'package:flutter/material.dart';

class UsernumberInfo extends StatelessWidget {
final UserModel userModel;
  const UsernumberInfo({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Info(
                            iconData: Icons.line_weight,
                             info: 'Weight',
                            measurement:"${userModel.weight} kg"  
                          ),
                          Info(
                            iconData: Icons.height,
                             info: 'Height',
                            measurement: "${userModel.height} Fit" 
                          ),
                          Info(
                            iconData: Icons.photo_size_select_actual_rounded,
                             info: 'age    ',
                            measurement:"${userModel.age} years"  
                          ),
                        ],
                      );
                 
  }
}