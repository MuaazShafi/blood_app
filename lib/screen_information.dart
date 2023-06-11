import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'constants.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
