import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/gaps.dart';
import 'package:instagram_clone/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.size12,
                ),
                child: Row(
                  children: [
                    for (var i in [
                      1,
                      1,
                      1,
                      11,
                      1,
                      1,
                      11,
                      1,
                      1,
                      1,
                      1,
                      1,
                      1,
                      1,
                      2,
                      1,
                      1,
                      1,
                      11,
                      1
                    ]) ...[
                      const CircleAvatar(
                        radius: 44,
                      ),
                      Gaps.h6,
                    ]
                  ],
                ),
              ),
            ),
            Gaps.v12,
            Divider(
              thickness: 2,
              color: Colors.grey.shade300,
            ),
          ],
        ),
      ),
    );
  }
}
