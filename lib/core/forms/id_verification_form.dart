import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kml_digital_bank/controller/identity_capture_controller.dart';
import 'package:kml_digital_bank/controller/profile_image_controller.dart';
import 'package:kml_digital_bank/features/apptour/sign_up/views/identity_verification/id_capture_view3.dart';

import '../app_colors/app_colors.dart';
import '../common_widgets/buttons/app_button.dart';
import '../common_widgets/input_fields/info_input_field.dart';
import 'id_drop_down.dart';

class IdentityVerificationForm extends StatelessWidget {
  IdentityVerificationForm({
    Key? key,
  }) : super(key: key);
  final idVerificationController = Get.put(
    IdentityController(),
  );

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'Type of identity',
            style: GoogleFonts.acme(color: AppColors.secondary, fontSize: 16.0),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(14.0)),
            ),
            shadowColor: AppColors.secondary,
            elevation: 10.0,
            child: IdentityDropDown(),
          ),
          const SizedBox(
            height: 50.0,
          ),
          const InfoInputField(
              hintText: 'Enter ID number',
              counterText: 'Identity number',
              prefixIcon: null),
          const SizedBox(
            height: 40.0,
          ),
          SizedBox(
            width: double.infinity,
            child: AppButton(
                text: 'Validate ID',
                onPressed: () {
                  idVerificationController.getIdImage(ImageSource.camera);
                }),
          ),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Skip for now',
                style: GoogleFonts.acme(
                    color: AppColors.prefixTextColor, fontSize: 13.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
