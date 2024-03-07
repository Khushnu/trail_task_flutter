import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text; 
  final Color textColor;
  final double? fontsize;
  final FontWeight? fontWeight;
  const TextWidget({super.key,
   required this.text, 
   required this.textColor, 
  this.fontsize, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(text, 
    style: TextStyle(
      color: textColor, 
      fontSize: fontsize, 
      fontWeight: fontWeight
    ),);
  }
}