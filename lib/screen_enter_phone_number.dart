import 'package:blood_app/screen_phone_verification.dart';
import 'package:blood_app/widgets/button.dart';
import 'package:blood_app/widgets/medium_text.dart';
import 'package:blood_app/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sizer/sizer.dart';
import 'constants.dart';

class NumberScreen extends StatelessWidget {
  NumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 5.h),
                  Image.asset(
                    'assets/images/blood_drop.png',
                    height: 18.h,
                    width: 22.w,
                  ),
                  SizedBox(height: 5.h),
                  MediumText(text: 'Enter Phone Number'),
                  SizedBox(height: 5.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: SizedBox(
                      height: 8.5.h,
                      child: IntlPhoneField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: MyColor.whiteColor.withOpacity(0.3),
                        ),
                        initialCountryCode: 'PAK',
                        dropdownIconPosition: IconPosition.trailing,
                        flagsButtonPadding: EdgeInsets.only(left: 15),
                        dropdownIcon: Icon(
                          Icons.arrow_drop_down,
                          color: MyColor.blackColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(PhoneVerification());
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Button(
                        text: 'Continue',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Text(
              '2023. All rights reserved',
              style: TextStyle(
                color: MyColor.blackColor.withOpacity(0.5),
                fontFamily: 'SatoshiBold',
                fontSize: 9.sp,
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
