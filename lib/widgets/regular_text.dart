import 'package:blood_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RegularText extends StatelessWidget {
  double? fontSize;
  Color? color;
  String? fontFamily, text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? 'Enter Something',
      style: TextStyle(
        color: color ?? MyColor.whiteColor,
        fontSize: fontSize ?? 12.sp,
        fontFamily: fontFamily ?? 'PoppinsRegular',
      ),
    );
  }

  RegularText({
    this.fontSize,
    this.color,
    this.fontFamily,
    required this.text,
  });
}
