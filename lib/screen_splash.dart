import 'package:blood_app/constants.dart';
import 'package:blood_app/screen_enter_phone_number.dart';
import 'package:blood_app/widgets/light_text.dart';
import 'package:blood_app/widgets/medium_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColor.redColor,
        body: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/images/ellipse.png',
                height: 15.h,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/blood_drop_white.png',
                    height: 18.h,
                    width: 22.w,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(NumberScreen());
                      },
                      child: Container(
                        width: 100.w,
                        height: 6.5.h,
                        decoration: BoxDecoration(
                          color: MyColor.whiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: MediumText(
                            text: 'Get Start',
                            color: MyColor.redColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.h, right: 3.w, left: 3.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LightText(text: 'Learn more'),
                  LightText(text: 'Skip now'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
