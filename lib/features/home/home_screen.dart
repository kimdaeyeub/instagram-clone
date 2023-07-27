import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/constants/gaps.dart';
import 'package:instagram_clone/constants/sizes.dart';
import 'package:instagram_clone/features/chat/chat_screen.dart';
import 'package:instagram_clone/features/common/widgets/post.dart';

class HomeScreen extends StatelessWidget {
  final bool isCurrentTab;
  final ScrollController scrollController;
  const HomeScreen({
    super.key,
    required this.isCurrentTab,
    required this.scrollController,
  });

  void _onMoveChatScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ChatScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.size16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Instagram",
                      style: TextStyle(
                        fontFamily: "LogoFont",
                        fontSize: Sizes.size32,
                      ),
                    ),
                    Row(
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.heart,
                          size: Sizes.size24,
                        ),
                        Gaps.h20,
                        GestureDetector(
                          onTap: () => _onMoveChatScreen(context),
                          child: const FaIcon(
                            FontAwesomeIcons.paperPlane,
                            size: Sizes.size24,
                          ),
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
                        const Column(
                          children: [
                            CircleAvatar(
                              radius: Sizes.size36,
                              foregroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYKGyhfK2RupYNvvl24p26K3AFsWCtvetNqg&usqp=CAU",
                              ),
                            ),
                            Gaps.v4,
                            Opacity(
                              opacity: 0.6,
                              child: Text(
                                "asd_zx",
                              ),
                            ),
                          ],
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
              Gaps.v14,
              const InstagramPost(),
              const InstagramPost(),
              const InstagramPost(),
              const InstagramPost(),
              const InstagramPost(),
              const InstagramPost(),
              const InstagramPost(),
              const InstagramPost(),
            ],
          ),
        ),
      ),
    );
  }
}
