import 'package:flutter/material.dart';

import '../../../core/exports.dart';

class PreConText extends StatelessWidget {
  const PreConText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: AppTextBody(
        textBody: text,
        fontSize: 24,
        color: AppColors.primary,
      ),
    );
  }
}

class TransferHeaderText extends StatelessWidget {
  const TransferHeaderText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return AppTextBody(
      textBody: text,
      fontSize: 24.0,
    );
  }
}
