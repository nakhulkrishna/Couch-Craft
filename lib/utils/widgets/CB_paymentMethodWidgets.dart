import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../colors/appcolor.dart';

class CB_paymentMethodsWidgets extends StatelessWidget {
  final String methodName;
  final IconData methodIcon;
  const CB_paymentMethodsWidgets({
    super.key,
    required this.methodName,
    required this.methodIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 75,
        width: double.infinity,
        decoration:
            BoxDecoration(border: Border.all(color: AppColors.darkGreen)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              FaIcon(methodIcon),
              const SizedBox(
                height: 5,
              ),
              Text(
                methodName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
