import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileImageController extends GetxController {
  static ProfileImageController get find => Get.find();
  final _imagePicker = ImagePicker();
  File? selectedImage;
  Future getImage(ImageSource source) async {
    final proImage = await _imagePicker.pickImage(source: source);
    if (proImage == null) return;

    File? img = File(proImage.path);

    selectedImage = img;
  }
}
