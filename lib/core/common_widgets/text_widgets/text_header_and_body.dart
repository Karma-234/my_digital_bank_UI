import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextBody extends StatelessWidget {
  const AppTextBody({Key? key, required this.textBody, required this.color})
      : super(key: key);
  final String textBody;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      textBody,
      style: GoogleFonts.inter(
        fontSize: 18,
        color: color,
      ),
    );
  }
}

class AppTextHeader extends StatelessWidget {
  const AppTextHeader({Key? key, required this.header, required this.color})
      : super(key: key);
  final String header;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      header,
      style: GoogleFonts.inter(
        fontSize: 24.0,
        color: color,
      ),
    );
  }
}
