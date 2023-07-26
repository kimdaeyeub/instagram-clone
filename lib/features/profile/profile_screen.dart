import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/constants/gaps.dart';
import 'package:instagram_clone/constants/sizes.dart';
import 'package:instagram_clone/features/profile/widgets/persistent_header.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              const SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
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
                    Gaps.v20,
                  ],
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: PersistentHeader(),
              ),
            ],
            body: TabBarView(
              children: [
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                  ),
                  itemBuilder: (context, index) => const FadeInImage(
                    fit: BoxFit.fitWidth,
                    placeholder: AssetImage("assets/images/placeholder.jpg"),
                    image: NetworkImage(
                        "https://cdn.slist.kr/news/photo/202303/434258_701143_4115.jpg"),
                  ),
                ),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                  ),
                  itemBuilder: (context, index) => const FadeInImage(
                    fit: BoxFit.fitWidth,
                    placeholder: AssetImage("assets/images/placeholder.jpg"),
                    image: NetworkImage(
                        "https://cdn.slist.kr/news/photo/202303/434258_701143_4115.jpg"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
