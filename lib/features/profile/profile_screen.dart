import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/constants/gaps.dart';
import 'package:instagram_clone/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.size20,
          ),
          child: Column(
            children: [
              Gaps.v20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.lock,
                        size: Sizes.size16,
                      ),
                      Gaps.h8,
                      Text(
                        "kimdaeyeub",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Sizes.size32,
                        ),
                      ),
                      Gaps.h10,
                      FaIcon(
                        FontAwesomeIcons.chevronDown,
                        size: Sizes.size20,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.squarePlus,
                        size: Sizes.size28,
                      ),
                      Gaps.h16,
                      FaIcon(
                        FontAwesomeIcons.bars,
                        size: Sizes.size28,
                      ),
                    ],
                  )
                ],
              ),
              Gaps.v20,
              Padding(
                padding: EdgeInsets.only(
                  right: Sizes.size20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: Sizes.size48,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "0",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Sizes.size16,
                              ),
                            ),
                            Text(
                              "게시물",
                              style: TextStyle(
                                fontSize: Sizes.size16,
                              ),
                            ),
                          ],
                        ),
                        Gaps.h40,
                        Column(
                          children: [
                            Text(
                              "22K",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Sizes.size16,
                              ),
                            ),
                            Text(
                              "팔로워",
                              style: TextStyle(
                                fontSize: Sizes.size16,
                              ),
                            ),
                          ],
                        ),
                        Gaps.h40,
                        Column(
                          children: [
                            Text(
                              "22K",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Sizes.size16,
                              ),
                            ),
                            Text(
                              "팔로잉",
                              style: TextStyle(
                                fontSize: Sizes.size16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
