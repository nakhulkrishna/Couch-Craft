import 'package:couchcraft/utils/widgets/CB_app_widget.dart';
import 'package:couchcraft/utils/widgets/CB_expandableText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utils/widgets/CB_addToCart.dart';
import '../../../utils/widgets/CP_products_review.dart';

class Productsdetails extends StatefulWidget {
  final String titleProducts;
  const Productsdetails({super.key, required this.titleProducts});

  @override
  State<Productsdetails> createState() => _ProductsdetailsState();
}

class _ProductsdetailsState extends State<Productsdetails> {
  int _quantity = 0;

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 0) _quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppBar(
                leading: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
                centerTitle: true,
                title: Text(widget.titleProducts),
                actions: [
                  CB_app_widget(
                      icons: CupertinoIcons.ellipsis, onPreesed: () {}),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                products_preview(
                  quantity: _quantity,
                ),
                const SizedBox(
                  height: 5,
                ),
                CB_addToCart(
                  quantity: _quantity,
                  increment: _incrementQuantity,
                  decrement: _decrementQuantity,
                ),
                const SizedBox(
                  height: 5,
                ),
                const ExpandableTextContainer(),
              ],
            )),
      ),
    );
  }
}
