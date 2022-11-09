import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ListController extends GetxController {
  static ListController get find => Get.find();

  Map<String, dynamic> listMap = {
    'list1': [],
    'list2': [
      {
        'icon': Icons.compare_arrows,
        'label': 'Quick Transfer',
        'onPressed': () {},
      },
      {
        'icon': Icons.wallet,
        'label': 'Payments',
        'onPressed': () {},
      },
      {
        'icon': Icons.window,
        'label': 'More',
        'onPressed': () {},
      },
    ],
  }.obs;
}
