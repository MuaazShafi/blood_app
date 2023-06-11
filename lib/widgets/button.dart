import 'package:blood_app/constants.dart';
import 'package:blood_app/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Button extends StatelessWidget {
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 6.5.h,
      decoration: BoxDecoration(
        color: MyColor.redColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: RegularText(
          text: text,
        ),
      ),
    );
  }

  Button({
    required this.text,
  });
}
