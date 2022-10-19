import 'package:flutter/material.dart';
import 'package:kml_digital_bank/common_widgets/buttons/common_icons.dart';
import 'package:kml_digital_bank/common_widgets/buttons/reset_password_button.dart';
import 'package:kml_digital_bank/common_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/core/app_colors.dart';
import 'package:kml_digital_bank/core/extensions/string_extension.dart';
import 'package:kml_digital_bank/features/onboarding/sign_up/views/identity_verification/face_capture_preview.dart';

class FaceCapture extends StatelessWidget {
  const FaceCapture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor2,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SafeArea(
                child: CommonBackIcon(
                  iconColor: AppColors.secondary,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SignUpTextHeader(header: 'Face Capturing'),
                    SignUpTextbody(textBody: 'Take a snapshot'),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      height: 374.0,
                      width: 170.83,
                      child: Image(
                        image: AssetImage('facecapture'.png),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 33.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ResetPasswordButton(
                        text: 'Take snapshot',
                        buttonPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return FacePreview();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const SignUpTextbody(textBody: 'Skip for now'),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
