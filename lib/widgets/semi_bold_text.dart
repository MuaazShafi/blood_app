import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants.dart';

class LargeText extends StatelessWidget {
  double? fontSize;
  Color? color;
  String? fontFamily, text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "Enter Text",
      style: TextStyle(
        color: color ?? MyColor.blackColor,
        fontSize: fontSize ?? 21.sp ,
        fontFamily: fontFamily ?? "PoppinsSemiBold",
      ),
    );
  }

  LargeText({
    this.fontSize,
    this.color,
    this.fontFamily,
    required this.text,
  });
}
