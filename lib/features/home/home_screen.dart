import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/constants/gaps.dart';
import 'package:instagram_clone/constants/sizes.dart';
import 'package:instagram_clone/features/home/widgets/post.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Sizes.size12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Instagram",
                      style: TextStyle(
                        fontFamily: "LogoFont",
                        fontSize: Sizes.size32,
                      ),
                    ),
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.heart,
                          size: Sizes.size24,
                        ),
                        Gaps.h20,
                        FaIcon(
                          FontAwesomeIcons.paperPlane,
                          size: Sizes.size24,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Gaps.v16,
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
                          radius: Sizes.size36,
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
              Gaps.v20,
              const InstagramPost(),
              const InstagramPost(),
            ],
          ),
        ),
      ),
    );
  }
}
