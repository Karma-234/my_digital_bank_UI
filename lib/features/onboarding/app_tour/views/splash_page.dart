import 'package:flutter/material.dart';

import '../../../../core/exports.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: DecoratedBox(
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage('bg3'.png), fit: BoxFit.fill),
        ),
        child: Center(
          child: Image.asset(
            'logo'.png,
            width: 148,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

// orig 120x60 -> 240x120

// screen 240x700