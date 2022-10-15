import 'package:flutter/material.dart';
import 'package:kml_digital_bank/features/onboarding/password_reset/views/new_password.dart';
import 'package:kml_digital_bank/features/onboarding/password_reset/views/password_reset.dart';

import 'features/onboarding/landing_page/views/landing_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KML Digita Bank',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PhoneNumberPage(),
    );
  }
}
