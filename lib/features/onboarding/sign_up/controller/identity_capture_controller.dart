import 'package:flutter/material.dart';
import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class IdentityController extends GetxController {
  static IdentityController get find => Get.find();
  final _idPicker = ImagePicker();
  late File? idImage;
  Future getIdImage(ImageSource source) async {
    final img = await _idPicker.pickImage(source: source);
    if (img == null) return;
    File? idImg = File(img.path);
    idImage = idImg;
  }
}
