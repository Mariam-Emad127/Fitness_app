import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/core/theming/color.dart';
import 'package:fitness/feature/profile/controller/get_user_Info/get_user_info_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ImageWidget extends StatefulWidget {
 
 final String image;
  const ImageWidget({super.key,  required this.image});
 

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
 
  final supabase = Supabase.instance.client;
  final String uid = FirebaseAuth.instance.currentUser!.uid;
  String fileName = DateTime.now().microsecond.toString();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        context.read<GetUserInfoCubit>().picimage();

        setState(() {});
 
      },
      child: CircleAvatar(
        radius: 40,
        backgroundColor: ColorsManager.mainYellow,
        child: Padding(
          padding: const EdgeInsets.all(2), // Border radius
 
          child: ClipOval(child: Image.network(widget.image)),
 
        ),
      ),
    );
  }
}
