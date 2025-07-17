import 'package:fitness/core/theming/color.dart';
 import 'package:flutter/material.dart';
 
class Remmeberme extends StatefulWidget {
  const Remmeberme({super.key});

  @override
  State<Remmeberme> createState() => _RemmebermeState();
}

class _RemmebermeState extends State<Remmeberme> {
  bool checked=false;
  @override
  Widget build(BuildContext context) {
    return   
              Row(
                children: [
                  Checkbox(
                    value: checked,
                    onChanged: (newvalue) {
                      setState(() {
                        checked = newvalue!;
                      });
                    },
                  ),
                  Text("I agree terms & condations",style: TextStyle(color: ColorsManager.lightGray,))
                ],
              );
  }
}