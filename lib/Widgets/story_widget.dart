import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_flutter/Widgets/text_widget.dart';

class StoryWidget extends StatelessWidget {
  final String frame; 
  final String image; 
  
  
  final String name; 
  

  const StoryWidget({super.key, required this.frame, required this.image,  required this.name, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0).copyWith(left: 0, top: 8, right: 0),
      child: Column(
        children: [
          Container(
            height: 85, 
            width: 85, 
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(frame) ),
            ),
            child: Stack(children: [
              Center(
                child: Container(
                  height: 70, 
                  width: 70, 
                  decoration: BoxDecoration(
                    color: Colors.grey, 
                    borderRadius: BorderRadius.circular(10), 
                  
                  ),
                  child: Image.asset(image, fit: BoxFit.fill,),
                ),
              ), 
             Transform.translate(
              offset: const Offset(0, 5),
               child: Align(
                alignment: Alignment.bottomRight,
                 child: Container(
                  height: 45, 
                  width: 40, 
                  padding: const EdgeInsets.all(4),
                 decoration: const BoxDecoration(
                  color: Colors.black, 
                  shape: BoxShape.circle
                 ),
                 child: Container(
                  height: 26, 
                  width: 25, 
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle, 
                    color: Color(0xffE7CAA9)
                  ), 
                  child: Image.asset('images/add.png', 
                  color: Colors.black, scale: 2.2,),
                 ),
                 ),
               ),
             )
            ],),
          ),
          SizedBox(
            height: 5,
          ),          
         TextWidget(text: name, textColor: Colors.white)
        ],
      ),
    );
  }
}