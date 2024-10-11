import 'package:couchcraft/utils/colors/appcolor.dart';
import 'package:flutter/material.dart';

class products_preview extends StatelessWidget {
  const products_preview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset(
            "assets/images/p5-removebg-preview.png",
          ),
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColors.lightGray,
              borderRadius: BorderRadius.circular(15)),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.lightGray,
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(
                  "assets/images/products4_-removebg-preview.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.lightGray,
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(
                  "assets/images/new.png",
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
