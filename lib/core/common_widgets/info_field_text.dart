import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_colors/app_colors.dart';

class InfoFieldText extends StatelessWidget {
  const InfoFieldText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.right,
      style: GoogleFonts.inter(
        fontSize: 16.0,
        color: AppColors.secondary,
      ),
    );
  }
}
