import 'package:get/get.dart';

class MoreController extends GetxController {
  static MoreController get find => Get.find();
  RxInt realindex = 0.obs;
  setIndex(int index) {
    realindex.value = index;
  }
}
