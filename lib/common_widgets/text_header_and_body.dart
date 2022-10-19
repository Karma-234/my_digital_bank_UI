import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/app_colors.dart';

class SignUpTextbody extends StatelessWidget {
  const SignUpTextbody({Key? key, required this.textBody}) : super(key: key);
  final String textBody;

  @override
  Widget build(BuildContext context) {
    return Text(
      textBody,
      style: GoogleFonts.inter(
        fontSize: 18,
        color: AppColors.bvnColor,
      ),
    );
  }
}

class SignUpTextHeader extends StatelessWidget {
  const SignUpTextHeader({Key? key, required this.header}) : super(key: key);
  final String header;

  @override
  Widget build(BuildContext context) {
    return Text(
      header,
      style: GoogleFonts.inter(
        fontSize: 24.0,
        color: AppColors.secondary,
      ),
    );
  }
}
