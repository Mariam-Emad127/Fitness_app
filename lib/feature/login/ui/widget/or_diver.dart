import 'package:flutter/material.dart';

class OrDiver extends StatelessWidget {
  const OrDiver({super.key});

  @override
  Widget build(BuildContext context) {
    return 
Padding(
  padding: const EdgeInsets.all(50.0),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Container(
          height: 1,
          color: Colors.grey,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text("OR"),
      ),
      Expanded(
        child: Container(
          height: 1,
          color: Colors.grey,
        ),
      ),
    ],
  ),
) ;
  }
}