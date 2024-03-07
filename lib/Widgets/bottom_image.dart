import 'package:flutter/material.dart';

class BottomImagesWidget extends StatelessWidget {
  
  final String image;
  const BottomImagesWidget({super.key,  required this.image,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      decoration:  BoxDecoration(
          image: DecorationImage(image: AssetImage(image)),
          color: Colors.amber,
          boxShadow:const [
            BoxShadow(
                color: Color.fromARGB(255, 73, 70, 70), spreadRadius: 3)
          ],
          shape: BoxShape.circle),
         
    );
  }
}
