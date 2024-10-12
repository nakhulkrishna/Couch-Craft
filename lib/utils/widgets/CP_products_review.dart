import 'package:couchcraft/utils/colors/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class products_preview extends StatelessWidget {
  final int quantity;
  const products_preview({
    super.key,
    required this.quantity,
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
              child: Stack(
                children: [
                  Container(
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
                  Positioned(
                    top: 165,
                    left: 135,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.darkGreen,
                          borderRadius: BorderRadius.circular(5)),
                      height: 25,
                      width: 25,
                      child: Center(
                        child: Text(
                          "$quantity",
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w500,
                              color: AppColors.almostWhite),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
