import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_colors/app_colors.dart';

class IdentityDropDown extends StatefulWidget {
  const IdentityDropDown({super.key});

  @override
  State<IdentityDropDown> createState() => _IdentityDropDownState();
}

class _IdentityDropDownState extends State<IdentityDropDown> {
  final idOptions = [
    'Drivers License',
    'National Id',
    'International Passport'
  ];
  String hint = 'Choose';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:
            GoogleFonts.inter(color: AppColors.prefixTextColor, fontSize: 13.0),
        enabled: true,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 0),
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.buttonColor2, width: 0),
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
      ),
      items: idOptions
          .map(
            (e) => DropdownMenuItem(value: e, child: Text(e)),
          )
          .toList(),
      onChanged: (value) {
        setState(() {
          hint = value as String;
        });
      },
    );
  }
}
