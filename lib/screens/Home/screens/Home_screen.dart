import 'package:couchcraft/screens/Home/screens/checkoutScreen.dart';
import 'package:couchcraft/utils/colors/appcolor.dart';
import 'package:couchcraft/utils/widgets/CB_app_widget.dart';

import 'package:couchcraft/utils/widgets/CP_products_list_widgets.dart';
import 'package:couchcraft/utils/widgets/CS_app_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Set the number of tabs
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200.0), // Set height for appbar
          child: SafeArea(
            // Ensures content stays within the safe area
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Theme.of(context).appBarTheme.backgroundColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              "CouchCraft",
                              style: TextStyle(
                                fontSize: 30, // Adjust font size
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              CB_app_widget(
                                icons: CupertinoIcons.cube_box,
                                onPreesed: () {
                                  Navigator.of(context).push(CupertinoPageRoute(
                                    builder: (context) =>
                                        const Checkoutscreen(),
                                  ));
                                },
                              ),
                              const SizedBox(width: 10),
                              CB_app_widget(
                                icons: CupertinoIcons.line_horizontal_3,
                                onPreesed: () {
                                  // Handle line horizontal icon press
                                },
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CS_app_widget(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black),
                    ),
                    child: const TabBar(
                      dividerColor: Colors.transparent,
                      labelColor: AppColors.almostWhite,
                      indicator: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(14.1))),
                      indicatorPadding: EdgeInsets.zero,
                      indicatorWeight: 0,
                      labelPadding: EdgeInsets.zero,
                      labelStyle: TextStyle(fontSize: 16),
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Tab(text: "All"),
                        Tab(text: "Lamb"),
                        Tab(text: "Table"),
                        Tab(text: "Chair"),
                        Tab(text: "Sofa"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            CP_products_list_widgets(),
            Center(
              child: Text('Home Content'),
            ),
            Center(
              child: Text('Special Offers Content'),
            ),
            Center(
              child: Text('Special Offers Content'),
            ),
            Center(
              child: Text('Special Offers Content'),
            ),
          ],
        ),
      ),
    );
  }
}
