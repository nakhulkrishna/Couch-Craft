import 'package:flutter/material.dart';

class ExpandableTextContainer extends StatefulWidget {
  const ExpandableTextContainer({Key? key}) : super(key: key);

  @override
  _ExpandableTextContainerState createState() =>
      _ExpandableTextContainerState();
}

class _ExpandableTextContainerState extends State<ExpandableTextContainer> {
  bool _isExpanded = false; // Tracks the state of expansion

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'BROOM',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    _isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                  onPressed: () {
                    setState(() {
                      _isExpanded = !_isExpanded; // Toggles expansion
                    });
                  },
                ),
              ],
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              child: Text(
                'This is the expandable content! '
                'It contains additional information that is hidden by default. '
                'Clicking the arrow will reveal the full text. '
                'This is the expandable content! '
                'It contains additional information that is hidden by default. '
                'Clicking the arrow will reveal the full text. '
                'You can add as much text as you want here, and only part of it will be shown initially.'
                'You can add as much text as you want here, and only part of it will be shown initially.',
                style: const TextStyle(color: Colors.black54),
                maxLines:
                    _isExpanded ? null : 5, // Shows 2 lines when not expanded
                overflow: _isExpanded
                    ? TextOverflow.visible
                    : TextOverflow
                        .ellipsis, // Adds ellipsis when text is truncated
              ),
            ),
          ],
        ),
      ),
    );
  }
}
