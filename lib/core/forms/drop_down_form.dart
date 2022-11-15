import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_colors/app_colors.dart';

class UserDropDownOptions extends StatefulWidget {
  const UserDropDownOptions({super.key});

  @override
  State<UserDropDownOptions> createState() => _UserDropDownOptionsState();
}

class _UserDropDownOptionsState extends State<UserDropDownOptions> {
  String hintValue = 'Why we need your BVN';
  final reasons = [
    'Your BVN is needed to keep your account safe\n and is a unique identifier for each customer'
  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
