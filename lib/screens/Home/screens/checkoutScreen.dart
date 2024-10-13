import 'package:couchcraft/utils/colors/appcolor.dart';
import 'package:couchcraft/utils/widgets/CB_app_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/widgets/CB_checkoutProductCard.dart';

class Checkoutscreen extends StatefulWidget {
  const Checkoutscreen({super.key});

  @override
  State<Checkoutscreen> createState() => _CheckoutscreenState();
}

class _CheckoutscreenState extends State<Checkoutscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
        child: Container(
            height: 60,
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Checkout",
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
            )),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppBar(
              surfaceTintColor: Colors.white,
              centerTitle: true,
              backgroundColor: Colors.white,
              title: const Text(
                "Checkout",
              ),
              actions: [
                CB_app_widget(icons: CupertinoIcons.ellipsis, onPreesed: () {}),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return const CB_checkoutProductsCard();
        },
      ),
    );
  }
}
