import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:flutter/material.dart';
 

class TextEditingwidget extends StatefulWidget {
  final String initialText;
  final String secondText;
  const TextEditingwidget({super.key, required this.initialText, required this.secondText,     });

  @override
  State<TextEditingwidget> createState() => _TextEditingwidgetState();
}

class _TextEditingwidgetState extends State<TextEditingwidget> {
    final TextEditingController _controller = TextEditingController();
   bool _isEditing = false;
   String initialText = "Initial Text";

  @override
  Widget build(BuildContext context) {
    return          
  GestureDetector(
      onTap: () {
        setState(() {
          _isEditing = true;
        });
      },
      child: _isEditing
          ? TextField(
               controller: _controller,
               cursorHeight:45,
               style: TextStyles.font13DarkBlueMedium,
              decoration: InputDecoration(
                fillColor: Colors.grey,
                hintText: 'Enter text here',
                
                border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(20),
      
      
                )
              ),
              onSubmitted: (_) {
                setState(() {
                  initialText = _controller.text;
                  _isEditing = false;
                });
              },
            )
          : Container(
            width: double.infinity,
            height: 45,
              //margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15),
           border: Border.all(color: ColorsManager.lightGray)
               ),
            child: Row(
              children: [
                Text(
                    widget.initialText,
                    style: TextStyles.font13DarkBlueMedium,
                  ),

                    Text(
                    widget.secondText,
                    style: TextStyles.font13DarkBlueMedium,
                  ),
              ],
            ),
          )
  );             
  }
}