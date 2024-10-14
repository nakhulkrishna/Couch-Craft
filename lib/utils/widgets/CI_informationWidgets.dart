import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class infromationwidgets extends StatelessWidget {
  final String itemName;
  final IconData itemIcons;
  const infromationwidgets({
    super.key,
    required this.itemName,
    required this.itemIcons,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
            width: double.infinity,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Icon(itemIcons),
                const SizedBox(
                  width: 10,
                ),
                Text(itemName)
              ],
            ),
          )
        ],
      ),
    );
  }
}
