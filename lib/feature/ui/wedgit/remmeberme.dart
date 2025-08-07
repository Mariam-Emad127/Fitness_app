import 'package:fitness/core/theming/color.dart';
import 'package:flutter/material.dart';
  
class Remmeberme extends StatefulWidget {
final ValueNotifier<bool> clicked ;//= ValueNotifier; (false);

    //  bool clicked;//=false;

    Remmeberme({super.key, 
   required this.clicked
    });

  @override
  State<Remmeberme> createState() => _RemmebermeState();
}

class _RemmebermeState extends State<Remmeberme> {

  @override
  Widget build(BuildContext context) {

     return   
              Row(
                children: [
                  Checkbox(
                    value:  widget.clicked.value,
                    onChanged: (newvalue) {
                      setState(() {
                       //clicked=!clicked;
                     //  widget.clicked = !widget.clicked;
                     //  widget.clicked.value==!(widget.clicked.value);
                            widget.clicked.value  = newvalue ?? false;

                       newvalue== widget.clicked;
                      //clicked=!clicked;
                      });
                      print("kkkkkkkkkkkk$newvalue");
                      print(widget.clicked);
                     // print( clicked);
                    },
                  ),
                  Text("I agree terms & condations",style: TextStyle(color: ColorsManager.lightGray,))
                ],
              );
  }
}