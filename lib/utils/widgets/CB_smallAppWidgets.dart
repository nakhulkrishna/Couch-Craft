import 'package:flutter/material.dart';

import '../colors/appcolor.dart';

class CB_smallAppWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CB_smallAppWidget({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Container(
          height: 50,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.darkGreen),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(icon),
            highlightColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
