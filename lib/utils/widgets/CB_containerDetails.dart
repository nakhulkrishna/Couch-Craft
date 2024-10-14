import 'package:flutter/material.dart';

import '../colors/appcolor.dart';

class CB_containerDetails extends StatelessWidget {
  final String heading;
  final String address;
  const CB_containerDetails({
    super.key,
    required this.heading,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          decoration:
              BoxDecoration(border: Border.all(color: AppColors.darkGreen)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  heading,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  address,
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 75,
          left: 290,
          child: Container(
            height: 20,
            width: 50,
            color: AppColors.gray,
            child: const Center(child: Text("Edit")),
          ),
        )
      ],
    );
  }
}
