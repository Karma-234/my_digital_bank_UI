import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/controller/exports.dart';

class UserInfoController extends GetxController {
  static UserInfoController get find => Get.find();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final nameController = TextEditingController();
  final imgctrl = Get.put(ProfileImageController());
  final bvnController = TextEditingController();
  final otpCtrl = TextEditingController();
  final pinCtrl = TextEditingController();
  final emailVerifctrl = TextEditingController();

  RxString phnCode = '234'.obs;
  RxString emailtxt = ''.obs;
  RxString psswdtxt = ''.obs;
  RxString phonetxt = ''.obs;
  RxString nametxt = ''.obs;
  RxString bvnTxt = ''.obs;
  RxString otpTxt = ''.obs;
  RxString pinTxt = ''.obs;
  RxString emailverifTxt = ''.obs;
  @override
  void onInit() {
    super.onInit();
    emailController.addListener(() {
      emailtxt.value = emailController.text.trim();
    });
    passwordController.addListener(() {
      psswdtxt.value = passwordController.text.trim();
    });
    phoneNumberController.addListener(() {
      phonetxt.value = phnCode + phoneNumberController.text.trim();
    });
    nameController.addListener(() {
      nametxt.value = nameController.text.trim();
    });
    bvnController.addListener(() {
      bvnTxt.value = bvnController.text.trim();
    });
    otpCtrl.addListener(() {
      otpTxt.value = otpCtrl.text.trim();
    });
    pinCtrl.addListener(() {
      pinTxt.value = pinCtrl.text.trim();
    });
    emailVerifctrl.addListener(() {
      emailverifTxt.value = emailVerifctrl.text.trim();
    });
  }
}
