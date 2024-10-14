import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class reviewDetailsList extends StatelessWidget {
  final String status;
  final String contentHeading;
  final String content;
  const reviewDetailsList({
    super.key,
    required this.status,
    required this.content,
    required this.contentHeading,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Text(
            status,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                contentHeading,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                content,
                style: const TextStyle(color: Colors.grey),
              )
            ],
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.forward))
        ],
      ),
    );
  }
}
