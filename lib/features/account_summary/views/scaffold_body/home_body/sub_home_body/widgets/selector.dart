import 'package:flutter/material.dart';

import '../../../../../../../core/exports.dart';

class Selector extends StatefulWidget {
  Selector({
    Key? key,
    this.onTap,
    this.icon = Icons.search,
  }) : super(key: key);
  Function()? onTap;
  IconData icon;

  @override
  State<Selector> createState() => _SelectorState();
}

class _SelectorState extends State<Selector> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Icon(
        widget.icon,
        color: AppColors.secondary,
      ),
    );
  }
}
