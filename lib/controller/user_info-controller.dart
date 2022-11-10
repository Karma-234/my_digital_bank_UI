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

  RxString emailtxt = ''.obs;
  RxString psswdtxt = ''.obs;
  RxString phonetxt = ''.obs;
  RxString nametxt = ''.obs;
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
      phonetxt.value = phoneNumberController.text.trim();
    });
    nameController.addListener(() {
      nametxt.value = nameController.text.trim();
    });
  }
}
