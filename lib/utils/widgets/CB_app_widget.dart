import 'package:couchcraft/utils/colors/appcolor.dart';
import 'package:flutter/material.dart';

class CB_app_widget extends StatelessWidget {
  final IconData icons;
  final VoidCallback onPreesed;
  const CB_app_widget({
    super.key,
    required this.icons,
    required this.onPreesed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.gray)),
      child: IconButton(
        onPressed: onPreesed,
        icon: Icon(icons),
        highlightColor: Colors.transparent,
      ),
    );
  }
}
