import 'package:couchcraft/utils/colors/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CB_customeButton extends StatelessWidget {
  const CB_customeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.primaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Buy Now",
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold, color: AppColors.almostWhite),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            height: 5,
            width: 5,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 158, 159, 159)),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            "₹999",
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold, color: AppColors.almostWhite),
          ),
        ],
      ),
    );
  }
}
