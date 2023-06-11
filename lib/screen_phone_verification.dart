import 'package:blood_app/phone_verification_controller.dart';
import 'package:blood_app/widgets/light_text.dart';
import 'package:blood_app/widgets/medium_text.dart';
import 'package:blood_app/widgets/regular_text.dart';
import 'package:blood_app/widgets/semi_bold_text.dart';
import 'package:get/get.dart';
import 'package:blood_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

class PhoneVerification extends StatelessWidget {
  PhoneVerification({super.key});

  final PhoneVerificationController controller =
      Get.put(PhoneVerificationController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: Column(
          children: [
            SizedBox(height: 7.h),
            Image.asset(
              'assets/images/blood_drop.png',
              height: 18.h,
              width: 22.w,
            ),
            SizedBox(height: 5.h),
            LargeText(text: 'Phone Verification'),
            SizedBox(height: 2.h),
            RegularText(
              text: 'We sent a code to your number ',
              fontSize: 13.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '+92 3080801585',
                  style: TextStyle(
                    fontFamily: 'PoppinsExtraLight',
                    fontSize: 12.sp,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: LightText(
                    text: '  Change',
                    color: MyColor.redColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Pinput(
                length: 6,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                defaultPinTheme: PinTheme(
                    height: 40.sp,
                    width: 40.sp,
                    decoration: BoxDecoration(
                        color: MyColor.pinPutColor.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
            SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RegularText(
                  text: "Don't receive your code?",
                  fontSize: 11.sp,
                  color: MyColor.blackColor,
                ),
                MediumText(
                  text: ' Resend',
                  color: MyColor.redColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
