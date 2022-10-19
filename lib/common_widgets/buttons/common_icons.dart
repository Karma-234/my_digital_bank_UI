import 'package:flutter/material.dart';

class CommonBackIcon extends StatelessWidget {
  const CommonBackIcon({Key? key, required this.iconColor}) : super(key: key);
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back_ios,
        color: iconColor,
      ),
    );
  }
}
