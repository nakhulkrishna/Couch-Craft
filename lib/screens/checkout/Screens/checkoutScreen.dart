import 'package:couchcraft/screens/checkout/Screens/checkoutDetails.dart';
import 'package:couchcraft/utils/colors/appcolor.dart';
import 'package:couchcraft/utils/widgets/CB_app_widget.dart';
import 'package:couchcraft/utils/widgets/CB_customeBotton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const Checkoutdetails(),
                ));
          },
          child: CB_customeButton(),
        ),
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
            )
          ],
        ),
      ),
      body: ListView.builder(
        dragStartBehavior: DragStartBehavior.down,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return const CB_checkoutProductsCard();
        },
      ),
    );
  }
}
