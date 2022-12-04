import 'package:flutter/material.dart';

import '../../../../../../core/exports.dart';

class AddNewCardButton extends StatelessWidget {
  const AddNewCardButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.add_circle_rounded,
            color: AppColors.secondary,
          ),
        ),
        const AppTextHeader(
          header: 'Add a new card',
          fontSize: 12.0,
          height: 15.0,
        ),
      ],
    );
  }
}
