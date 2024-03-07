import 'package:flutter/material.dart';
import 'package:task_flutter/themestyle.dart';

class AppBarButtonsWidget extends StatelessWidget {
  final Widget child; 
  const AppBarButtonsWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 40, 
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6), 
                    color: appbarButtonsColor
                  ),
                  child: child,
                 );
  }
}