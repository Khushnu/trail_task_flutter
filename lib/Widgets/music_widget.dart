import 'package:flutter/material.dart';
import 'package:task_flutter/Widgets/text_widget.dart';

class MusicWidget extends StatelessWidget {
  final String music;
  const MusicWidget({super.key, required this.music});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: MediaQuery.sizeOf(context).width * 0.4,
      decoration: BoxDecoration(
          color: const Color.fromARGB(224, 13, 13, 13),
          borderRadius: BorderRadius.circular(6)),
      child: Stack(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'images/music.png',
                  scale: 1.5,
                ),
                TextWidget(text: music, textColor: Colors.white)
              ],
            ),
          ),
          Container(
            width: 45,
            height: 25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                gradient: const LinearGradient(
                    colors: [Color(0xff1B1B1B), Colors.transparent])),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 45,
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: const LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Color(0xff1B1B1B), Colors.transparent])),
            ),
          ),
        ],
      ),
    );
  }
}
