import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kml_digital_bank/features/onboarding/sign_up/views/identity_verification/face_capture_preview.dart';

class ProfileImageController extends GetxController {
  static ProfileImageController get find => Get.find();
  final imagePicker = ImagePicker();
  XFile? selectedImage;
  Future getImage(ImageSource source) async {
    final proImage = await imagePicker.pickImage(source: source);
    if (proImage == null) return;
    XFile? img = XFile(proImage.path);
    selectedImage = img;
    Get.to(FacePreview());
  }
}
