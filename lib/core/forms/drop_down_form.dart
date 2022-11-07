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
    return DropdownButtonFormField(
      style: GoogleFonts.inter(color: AppColors.secondary),
      elevation: 20,
      iconEnabledColor: AppColors.secondary,
      decoration: InputDecoration(
        hintText: 'Why we need your BVN',
        hintStyle:
            GoogleFonts.inter(color: AppColors.secondary, fontSize: 14.0),
        enabled: true,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.buttonColor2, width: 0),
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        filled: true,
        fillColor: AppColors.buttonColor2,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.buttonColor2, width: 0),
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
      ),
      items: reasons
          .map(
            (e) => DropdownMenuItem(
              value: e,
              child: Text(e),
            ),
          )
          .toList(),
      onChanged: ((value) {
        setState(() {
          hintValue = value as String;
        });
      }),
    );
  }
}
