import 'package:couchcraft/utils/colors/appcolor.dart';
import 'package:couchcraft/utils/widgets/CB_reviewScreen.dart';
import 'package:couchcraft/utils/widgets/CB_shpping.dart';
import 'package:couchcraft/utils/widgets/paymentScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Checkoutdetails extends StatefulWidget {
  const Checkoutdetails({super.key});

  @override
  State<Checkoutdetails> createState() => _CheckoutdetailsState();
}

class _CheckoutdetailsState extends State<Checkoutdetails>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140),
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
            ),
            Container(
              color: AppColors.lightGray,
              child: TabBar(
                controller: _tabController, // Assign controller here
                enableFeedback: false,
                isScrollable: false,
                dividerColor: Colors.transparent,
                indicatorColor:
                    AppColors.lightGray, // Active tab underline color
                labelColor: Colors.black, // Active tab text color
                unselectedLabelColor: Colors.grey, // Inactive tab text color
                tabs: const [
                  Tab(
                    icon: Icon(CupertinoIcons.cube_box_fill),
                    text: "Shipping",
                  ),
                  Tab(
                    icon: FaIcon(FontAwesomeIcons.bank),
                    text: "Payment",
                  ),
                  Tab(
                    icon: FaIcon(FontAwesomeIcons.checkToSlot),
                    text: "Review",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController, // Assign controller here
        physics: const NeverScrollableScrollPhysics(),
        children: [
          CB_shipping(tabController: _tabController), // Pass TabController
          paymentScreen(
            tabController: _tabController,
          ),
          const CB_reviewScreen(),
        ],
      ),
    );
  }
}
