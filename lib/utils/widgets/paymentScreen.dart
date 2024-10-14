import 'package:couchcraft/utils/colors/appcolor.dart';
import 'package:couchcraft/utils/widgets/CB_paymentMethodWidgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class paymentScreen extends StatelessWidget {
  final TabController tabController; // Accept TabController
  const paymentScreen({
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
          const Row(
            children: [
              CB_paymentMethodsWidgets(
                methodName: 'Credit Card',
                methodIcon: FontAwesomeIcons.creditCard,
              ),
              SizedBox(
                width: 5,
              ),
              CB_paymentMethodsWidgets(
                methodName: 'Google Pay',
                methodIcon: FontAwesomeIcons.googlePay,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Card Details",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(
              label: Text("Card Number"),
              hintText: "XXX XXX XXX",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.darkGreen),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Expiaring Date"),
                    hintText: "mm/yy",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.darkGreen),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Security Code"),
                    hintText: "XXX",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.darkGreen),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(
              label: Text("Voucher"),
              hintText: "XXX",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.darkGreen),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Checkbox(
                activeColor: AppColors.primaryColor,
                value: true,
                onChanged: (value) {},
              ),
              const Text(
                  "I have designated my shipping address\n to also serve as my billing address.")
            ],
          ),
          const SizedBox(
            height: 140,
          ),
          GestureDetector(
            onTap: () {
              tabController.animateTo(2);
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
