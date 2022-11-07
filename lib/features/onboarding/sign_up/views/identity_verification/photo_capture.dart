import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../controller/exports.dart';
import '../../../../../core/exports.dart';
import '../../../../exports.dart';

class FaceCapture extends StatelessWidget {
  FaceCapture({super.key});
  final profileImageController = Get.put(ProfileImageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                    const AppTextHeader(
                      header: 'Face Capturing',
                      color: AppColors.secondary,
                    ),
                    const AppTextBody(
                      textBody: 'Take a snapshot',
                      color: AppColors.bvnColor,
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    SizedBox(
                      height: 374.0.h,
                      width: 170.83.w,
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
                      child: const AppTextBody(
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
