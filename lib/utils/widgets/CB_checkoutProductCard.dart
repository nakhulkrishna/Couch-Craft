import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors/appcolor.dart';
import 'CB_smallAppWidgets.dart';

class CB_checkoutProductsCard extends StatefulWidget {
  const CB_checkoutProductsCard({
    super.key,
  });

  @override
  State<CB_checkoutProductsCard> createState() =>
      _CB_checkoutProductsCardState();
}

class _CB_checkoutProductsCardState extends State<CB_checkoutProductsCard> {
  int quantity = 0;

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    setState(() {
      if (quantity > 0) quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 170,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Stack(
                  children: [
                    Container(
                      height: 170,
                      width: 160,
                      decoration: BoxDecoration(
                          color: AppColors.almostWhite,
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        "assets/images/Box_celing_spot-removebg-preview.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 140,
                      child: Container(
                        height: 20,
                        width: 80,
                        decoration: BoxDecoration(
                          color: AppColors.lightGray,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Center(
                            child: Text(
                          "Stock",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 140,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: AppColors.darkGreen,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "$quantity",
                            style: const TextStyle(
                                color: AppColors.almostWhite,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: SizedBox(
                  height: 170,
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "The Broom",
                        style: TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "₹999",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          CB_smallAppWidget(
                            icon: CupertinoIcons.delete,
                            onPressed: () {},
                          ),
                          CB_smallAppWidget(
                            icon: Icons.remove,
                            onPressed: increment,
                          ),
                          CB_smallAppWidget(
                            icon: Icons.add,
                            onPressed: decrement,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
