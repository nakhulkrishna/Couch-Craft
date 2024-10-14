import 'package:couchcraft/utils/widgets/CI_informationWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/widgets/CB_app_widget.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  final Map<String, IconData> items = {
    'Delivery point': CupertinoIcons.building_2_fill,
    'Orders': CupertinoIcons.cart,
    'Whislit': CupertinoIcons.heart,
    'Login/Logout': CupertinoIcons.at_circle,
    'Settings': CupertinoIcons.settings,
    'Coupons': CupertinoIcons.tag
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Informations",
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          String itemname = items.keys.elementAt(index);
          IconData itemIcon = items.values.elementAt(index);
          return infromationwidgets(itemName: itemname, itemIcons: itemIcon);
        },
      ),
    );
  }
}
