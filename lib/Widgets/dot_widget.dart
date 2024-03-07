import 'package:flutter/cupertino.dart';
import 'package:task_flutter/themestyle.dart';

Widget dotWidget() {
  return Container(
    height: 10,
    width: 10,
    decoration:
        const BoxDecoration(shape: BoxShape.circle, color: appbarButtonsColor),
  );
}
