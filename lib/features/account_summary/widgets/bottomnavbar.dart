import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/exports.dart';

class BtmNavBar extends StatefulWidget {
  const BtmNavBar({Key? key, this.currentIndex = 0, this.onTap})
      : super(key: key);

  final int currentIndex;
  final Function(int)? onTap;

  @override
  State<BtmNavBar> createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          unselectedLabelStyle: const TextStyle(color: AppColors.primary),
          selectedItemColor: AppColors.buttonColor2,
          currentIndex: widget.currentIndex,
          backgroundColor: AppColors.secondary,
          onTap: widget.onTap,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: AppColors.secondary,
                icon: Icon(
                  Icons.home,
                  color: AppColors.buttonColor2,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                backgroundColor: AppColors.secondary,
                icon: Icon(
                  Icons.credit_card,
                  color: AppColors.buttonColor2,
                ),
                label: 'Cards'),
            BottomNavigationBarItem(
                backgroundColor: AppColors.secondary,
                icon: Icon(
                  FontAwesomeIcons.paperPlane,
                  color: AppColors.buttonColor2,
                ),
                label: 'Messaging'),
            BottomNavigationBarItem(
                backgroundColor: AppColors.secondary,
                icon: Icon(
                  Icons.more_horiz,
                  color: AppColors.buttonColor2,
                ),
                label: 'More'),
          ],
        ),
      ),
    );
  }
}
