import 'package:couchcraft/utils/colors/appcolor.dart';
import 'package:couchcraft/utils/widgets/CB_reviewDetails.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CB_reviewScreen extends StatefulWidget {
  const CB_reviewScreen({
    super.key,
  });

  @override
  State<CB_reviewScreen> createState() => _CB_reviewScreenState();
}

class _CB_reviewScreenState extends State<CB_reviewScreen> {
  // Method to show a confirmation dialog
  void _showOrderConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(const Duration(seconds: 4), () {
          Navigator.pop(context);
        });
        return AlertDialog(
          backgroundColor: Colors.transparent,
          content: Lottie.asset("assets/animations/orderPlaced.json",
              fit: BoxFit.cover),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const reviewDetailsList(
              status: "SHIP TO",
              content: "997 Beksi west Java\nchina 606763",
              contentHeading: "My Home"),
          const Divider(),
          const reviewDetailsList(
              status: "DELIVERY",
              content: "30-40 Min",
              contentHeading: "Instant Delivery"),
          const Divider(),
          const reviewDetailsList(
              status: "PAYMENT",
              content: "08/2024",
              contentHeading: "Credit Card"),
          const Divider(),

          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "SUBTOTAL",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text("3xItems Products"),
                  Spacer(),
                  Text(
                    "₹38,163",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text("Shipping"),
                  Spacer(),
                  Text(
                    "₹120",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text("Discount"),
                  Spacer(),
                  Text(
                    "₹-1680",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ],
          ),
          const Divider(),

          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "TOTAL",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "₹36,363",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                width: 5,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),

          // "Place Order" Button
          GestureDetector(
            onTap: () {
              _showOrderConfirmationDialog(); // Show confirmation dialog on press
            },
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.primaryColor),
              child: const Center(
                child: Text(
                  "Place Order",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.almostWhite),
                ),
              ),
            ),
          ), // Expandable "Items" section
        ],
      ),
    );
  }
}
