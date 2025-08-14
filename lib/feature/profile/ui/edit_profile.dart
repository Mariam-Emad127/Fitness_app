import 'package:fitness/core/theming/color.dart';
import 'package:fitness/core/theming/style.dart';
import 'package:fitness/core/widgets/botton_widget.dart';
import 'package:fitness/feature/profile/ui/widget/text_editingwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
backgroundColor: ColorsManager.darkGray,
 
  body: SafeArea(child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
     // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Padding(
        padding: const EdgeInsets.only(left: 30.0,),
        child: Row(
          
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        IconButton (color: Colors.white,iconSize: 25,icon:Icon( Icons.arrow_back_ios_new), onPressed:  (){Navigator.pop(context);}),
        SizedBox(width: 80.w,),
        Text("Edit Profile",style: TextStyles.font20WhiteMedium,)
        
          ],),
    
            
      ),
       SizedBox(height: 20.h,),
       Text("Name",style: TextStyles.font14GrayRegular,),
       SizedBox(height: 7.h,),
      TextEditingwidget(initialText:  "mariam Emad",secondText: "",),
                 SizedBox(height:10.h,),
 

             Text("Weight",style: TextStyles.font14GrayRegular,),
       SizedBox(height: 7.h,),
      TextEditingwidget(initialText:  "75 ",secondText: "Kg",),
                             SizedBox(height:10.h,),

             Text("hight",style: TextStyles.font14GrayRegular,),
       SizedBox(height: 7.h,),
      TextEditingwidget(initialText:  "150 ",secondText: "cm",)  ,
                 SizedBox(height:10.h,),

           Text("Age",style: TextStyles.font14GrayRegular,),
       SizedBox(height: 7.h,),
       
      TextEditingwidget(initialText:  "25  ",secondText: "Years",) ,    
       SizedBox(height: 25.h,),
           BottonWidget(onTap: () {  },  title: 'Save Change', width: 340,)

      ],
    
    
    
    ),
  )),
  
    );
  }
}