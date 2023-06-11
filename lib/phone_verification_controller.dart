import 'dart:async';

import 'package:blood_app/screen_information.dart';
import 'package:get/get.dart';

class PhoneVerificationController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  void startTimer() {
    Timer(Duration(seconds: 4), () {
      Get.to(InformationScreen());
    });
  }
}
