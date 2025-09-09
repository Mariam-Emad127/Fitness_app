import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 
 
class CustomSearchTextField extends StatelessWidget {
     final Function(String) onChanged;
  const CustomSearchTextField({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:  0.0),
      child: SizedBox(
      width: 310.w,
      height: 35,
        child: TextField(
          onChanged:onChanged ,
            decoration: InputDecoration(
             focusedBorder: buildOutlineInputBorder(),
             enabledBorder: buildOutlineInputBorder(),
            hoverColor: ColorsManager.mainYellow,
            fillColor: ColorsManager.lightGray   ,
            filled: true,
            
            hintText: 'Search',
            hintStyle: TextStyles.font15WhiteMedium,
            prefixIcon: IconButton(
              onPressed: () {},
              
              icon: const Opacity(
                opacity: .8,
                child: Icon(
                  Icons.search,
                  color: ColorsManager.mainYellow,
                  //FontAwesomeIcons.magnifyingGlass,
                  size: 22,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: ColorsManager.lightGray,
      ),
      borderRadius: BorderRadius.circular(
        13,
      ),
    );
  }

/*
 void showFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Make it full height if needed
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: (),
        );
      },
    );
*/
 // }


}