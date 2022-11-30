import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecipientDetails extends GetxController {
  static RecipientDetails get find => Get.find();

  final nameCtrl = TextEditingController();
  final bankCtrl = TextEditingController();
  final accNumCtrl = TextEditingController();

  RxString name = ''.obs;
  RxString bank = ''.obs;
  RxString accNum = ''.obs;
  RxString date = ''.obs;

  setDate(DateTime dateTime) {
    date.value = dateTime.toString();
  }

  @override
  void onInit() {
    super.onInit();
    nameCtrl.addListener(() {
      name.value = nameCtrl.text.trim();
    });
    bankCtrl.addListener(() {
      bank.value = bankCtrl.text.trim();
    });
    accNumCtrl.addListener(() {
      accNum.value = accNumCtrl.text.trim();
    });
  }
}
