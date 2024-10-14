import 'package:couchcraft/utils/colors/appcolor.dart';
import 'package:couchcraft/utils/widgets/CB_containerDetails.dart';
import 'package:couchcraft/utils/widgets/CC_customeDeliveryTimeWidget.dart';
import 'package:couchcraft/utils/widgets/paymentScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CB_shipping extends StatelessWidget {
  final TabController tabController; // Accept TabController
  const CB_shipping({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 6,
              ),
              const Text(
                "ADDRESS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "+ ADD",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const CB_containerDetails(
            heading: "My Home",
            address: "997 Beksi west Java\nchina",
          ),
          const SizedBox(
            height: 10,
          ),
          const CB_containerDetails(
            heading: 'Office',
            address: "997 Beksi west Java\nchina",
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "DELIVERY EXTIMATE",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const CC_customeDeliveryTimeWidget(
            icons: FontAwesomeIcons.truckFast,
            name: 'Instant Delivery',
          ),
          const SizedBox(
            height: 10,
          ),
          const CC_customeDeliveryTimeWidget(
            icons: FontAwesomeIcons.truck,
            name: 'Standard Delivery',
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              tabController.animateTo(1); // Navigate to the next tab (Payment)
            },
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.primaryColor),
              child: const Center(
                child: Text(
                  "Continue",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.almostWhite),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
