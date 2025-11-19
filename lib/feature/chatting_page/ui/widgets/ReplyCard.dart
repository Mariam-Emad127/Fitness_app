import 'package:fitness/core/theming/color.dart';
import 'package:flutter/material.dart';

class ReplyCard extends StatelessWidget {
  const ReplyCard({super.key,
   required  this.message, required this.time
  })  ;
    final String message;
    final String time;

  //final MessageModel message;

  @override
  Widget build(BuildContext context) {
    return   Container(
                              padding: EdgeInsets.all(12),
                              margin: EdgeInsets.symmetric(vertical: 6),
                              constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width * 0.7,
                              ),
                              decoration: BoxDecoration(
                                color: ColorsManager.mainYellow,
                                borderRadius: BorderRadius.circular(17),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "messageText",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                    "1:30",
                                    style: TextStyle(fontSize: 10, color: Colors.black),
                                  ),
                                ],
                              ),
                                           
                            );
   
   
    /*
     Align(
      alignment: Alignment.bottomLeft,
      
          child: 
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FittedBox(
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: ColorsManager.mainYellow),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                        right: 50,
                        top: 5,
                        bottom: 12,
                      ),
                      child: Text(
                        message,
                         //message.message,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 4,
                      right: 10,
                      child: Text(time,
                        //message.time,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        //),
  //),
    );
    */
  }
}