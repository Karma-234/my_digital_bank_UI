import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/payments/controller/payment_controller.dart';
import 'package:kml_digital_bank/features/payments/views/sub_view/cable_tv_view/cable_tv_2.dart';

import '../../../../link_bank/widgets/bank_grid_view.dart';
import '../../../widgets/network_options.dart';

class CableTV extends StatelessWidget {
  CableTV({super.key});
  final ctrl = Get.put(PaymenController());

  @override
  Widget build(BuildContext context) {
    return NetworkOptions(
      itemCount: ctrl.cable.length,
      ctrl: ctrl,
      title: 'Select Cable TV',
      builder: (p0, p1) {
        return LogoDispaly(
          onPressed: () {
            ctrl.setIndex(p1);
            Get.to(() => CableTv2());
          },
          asset: ctrl.cable[p1],
        );
      },
    );
  }
}
