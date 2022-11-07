import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:kml_digital_bank/features/onboarding/landing_page/views/landing_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'KML Digital Bank',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExistingUser(),
    );
  }
}
