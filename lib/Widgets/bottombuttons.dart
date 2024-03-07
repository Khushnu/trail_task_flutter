import 'package:flutter/material.dart';
import 'package:task_flutter/Widgets/text_widget.dart';

class BottomButtonsWidget extends StatelessWidget {
  final int like; 
  final int comnts; 
  final int share;
  const BottomButtonsWidget({super.key, required this.like, required this.comnts, required this.share});

  @override
  Widget build(BuildContext context) {
    return  Row(
                      children: [
                        const Icon(Icons.favorite, color: Colors.red,), 
                        const SizedBox(
                              width: 5,
                            ),
                        TextWidget(text: like.toString(), textColor: Colors.white), 
                         const SizedBox(
                              width: 10,
                            ),
                        Image.asset('images/comnts.png', scale: 1.7,), 
                         const SizedBox(
                              width: 5,
                            ),
                        TextWidget(text: comnts.toString(), textColor: Colors.white), 
                        const SizedBox(
                              width: 10,
                            ),
                         Image.asset('images/share.png', scale: 1.7,), 
                          const SizedBox(
                              width: 5,
                            ),
                        TextWidget(text: share.toString(), textColor: Colors.white), 
                        const Spacer(), 
                         Image.asset('images/save.png', scale: 1.7,), 
                      ],
                    );
  }
}