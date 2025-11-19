 import 'package:fitness/core/theming/color.dart';
import 'package:flutter/material.dart';

 
 
class OwnMessageCard extends StatelessWidget {

  const OwnMessageCard({super.key,
 required this.message, required this.time
   });  
  final String message;
      final String time;
  @override
  Widget build(BuildContext context) {
    return         Container(
                              padding: EdgeInsets.all(12),
                              margin: EdgeInsets.symmetric(vertical: 6),
                              constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width * 0.7,
                              ),
                              decoration: BoxDecoration(
                                color: ColorsManager.gray,
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
   
   
    
    /*Align(
      alignment: Alignment.bottomRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
         // maxWidth: MediaQuery.of(context).size.width - 45,
         minWidth: 100,
             maxWidth:200,// MediaQuery.of(context).size.width ,//-4, //45,
          minHeight:6, 
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Color(0xffdcf8c6),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 30,
                  top: 5,
                  bottom: 20,
                ),
                child: Text( 
                   message ,
                //  message.message,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Row(
                  children: [
                    Text(time ,
                    //  message.time,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.done_all,
                      size: 20,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    */
  }
}