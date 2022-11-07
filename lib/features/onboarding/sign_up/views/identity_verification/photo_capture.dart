import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/common_icons.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/reset_password_button.dart';
import 'package:kml_digital_bank/core/common_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/extensions/string_extension.dart';
import 'package:kml_digital_bank/features/onboarding/sign_up/controller/profile_image_controller.dart';
import 'package:kml_digital_bank/features/onboarding/sign_up/views/identity_verification/face_capture_preview.dart';

class FaceCapture extends StatelessWidget {
  FaceCapture({super.key});
  final profileImageController = Get.put(ProfileImageController());
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
                    const SignUpTextHeader(
                      header: 'Face Capturing',
                      color: AppColors.secondary,
                    ),
                    const SignUpTextbody(
                      textBody: 'Take a snapshot',
                      color: AppColors.bvnColor,
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    SizedBox(
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
                          profileImageController
                              .getImage(ImageSource.camera)
                              .then(
                                (value) => Get.to(
                                  () => FacePreview(
                                    image: profileImageController.selectedImage,
                                  ),
                                ),
                              );
                        },
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const SignUpTextbody(
                        textBody: 'Skip for now',
                        color: AppColors.bvnColor,
                      ),
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
