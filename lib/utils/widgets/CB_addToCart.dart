import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/appcolor.dart';

class CB_addToCart extends StatefulWidget {
  final int quantity;
  final VoidCallback increment;
  final VoidCallback decrement;
  const CB_addToCart({
    super.key,
    required this.quantity,
    required this.increment,
    required this.decrement,
  });

  @override
  State<CB_addToCart> createState() => _CB_addToCartState();
}

class _CB_addToCartState extends State<CB_addToCart> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Container(
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
                      fontWeight: FontWeight.bold,
                      color: AppColors.almostWhite),
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
                      fontWeight: FontWeight.bold,
                      color: AppColors.almostWhite),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Container(
              height: 60,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: AppColors.darkGreen)),
              child: IconButton(
                  highlightColor: Colors.transparent,
                  onPressed: widget.decrement,
                  icon: const Icon(Icons.remove))),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Container(
              height: 60,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: AppColors.darkGreen)),
              child: IconButton(
                  highlightColor: Colors.transparent,
                  onPressed: widget.increment,
                  icon: const Icon(Icons.add))),
        ),
      ],
    );
  }
}
