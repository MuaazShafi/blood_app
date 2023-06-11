import 'package:blood_app/widgets/button.dart';
import 'package:blood_app/widgets/regular_text.dart';
import 'package:blood_app/widgets/semi_bold_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'constants.dart';

class InformationController extends GetxController {
  RxString bloodType = RxString(bloodGroupList.first);
  RxString gender = RxString(genderList.first);
  static const List<String> bloodGroupList = <String>[
    'A +',
    'B +',
    'O +',
    'AB +',
    'A -',
    'B -',
    'O -',
    'AB -',
  ];
  static const List<String> genderList = <String>[
    'Male',
    'Female',
    'Other',
  ];

  void setBloodType(String value) {
    bloodType.value = value;
  }

  void setGender(String value) {
    gender.value = value;
  }
}

class InformationScreen extends StatelessWidget {
  final InformationController controller = Get.put(InformationController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  children: [
                    SizedBox(height: 3  .h),
                    Image.asset(
                      'assets/images/blood_drop.png',
                      height: 18.h,
                      width: 22.w,
                    ),
                    SizedBox(height: 3.h),
                    LargeText(text: 'Information'),
                    SizedBox(height: 3.h),
                    Obx(
                      () => DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: MyColor.redColor.withOpacity(0.1),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                        ),
                        value: controller.bloodType.value,
                        onChanged: (String? value) {
                          if (value != null) {
                            controller.setBloodType(value);
                          }
                        },
                        items: InformationController.bloodGroupList
                            .map<DropdownMenuItem<String>>(
                              (String value) => DropdownMenuItem<String>(
                                value: value,
                                child: RegularText(
                                  text: '$value',
                                  fontSize: 13.sp,
                                  color: MyColor.redColor,
                                ),
                              ),
                            )
                            .toList(),
                        dropdownColor: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        iconEnabledColor: Colors.pink,
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 21.sp,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Obx(
                      () => DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: MyColor.redColor.withOpacity(0.1),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                        ),
                        value: controller.gender.value,
                        onChanged: (String? value) {
                          if (value != null) {
                            controller.setGender(value);
                          }
                        },
                        items: InformationController.genderList
                            .map<DropdownMenuItem<String>>(
                              (String value) => DropdownMenuItem<String>(
                                value: value,
                                child: RegularText(
                                  text: '$value',
                                  fontSize: 13.sp,
                                  color: MyColor.redColor,
                                ),
                              ),
                            )
                            .toList(),
                        dropdownColor: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        iconEnabledColor: Colors.pink,
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 21.sp,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      height: 8.h,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Name',
                          hintStyle: TextStyle(
                            fontFamily: 'PoppinsRegular',
                            fontSize: 12.sp,
                          ),
                          filled: true,
                          fillColor: MyColor.whiteColor,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      height: 8.h,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Address',
                          hintStyle: TextStyle(
                              fontFamily: 'PoppinsRegular', fontSize: 12.sp),
                          filled: true,
                          fillColor: MyColor.whiteColor,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Button(
                      text: 'continue',
                    ),
                  ],
                ),
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
