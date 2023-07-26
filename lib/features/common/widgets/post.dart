import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/constants/gaps.dart';
import 'package:instagram_clone/features/common/widgets/comments_modal.dart';

import '../../../constants/sizes.dart';

class InstagramPost extends StatelessWidget {
  const InstagramPost({super.key});

  void _onTapAllComments(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      isScrollControlled: true,
      builder: (context) => const CommentsModal(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.size16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: Sizes.size24,
                    foregroundImage: AssetImage(
                      "assets/images/placeholder.jpg",
                    ),
                  ),
                  Gaps.h10,
                  Text(
                    "sadasd",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              FaIcon(FontAwesomeIcons.ellipsis)
            ],
          ),
        ),
        Gaps.v12,
        const FadeInImage(
          fit: BoxFit.fitWidth,
          //TODO
          // 그냥 하얀 색의 사진을 placeholder에 넣을 것
          placeholder: AssetImage("assets/images/placeholder.jpg"),
          image: NetworkImage(
              "https://cdn.slist.kr/news/photo/202303/434258_701143_4115.jpg"),
        ),
        // Image.network(
        //   "https://cdn.slist.kr/news/photo/202303/434258_701143_4115.jpg",
        //   fit: BoxFit.fitWidth,
        // ),
        Gaps.v20,
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.heart,
                        size: Sizes.size28,
                      ),
                      Gaps.h12,
                      FaIcon(
                        FontAwesomeIcons.comment,
                        size: Sizes.size28,
                      ),
                      Gaps.h12,
                      FaIcon(
                        FontAwesomeIcons.paperPlane,
                        size: Sizes.size28,
                      ),
                    ],
                  ),
                  FaIcon(
                    FontAwesomeIcons.bookmark,
                  ),
                ],
              ),
              Gaps.v10,
              const Row(
                children: [
                  Text(
                    "좋아요",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: Sizes.size12 + Sizes.size2,
                    ),
                  ),
                  Gaps.h4,
                  Text(
                    "46,025개",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: Sizes.size12 + Sizes.size2,
                    ),
                  )
                ],
              ),
              Gaps.v8,
              const Row(
                children: [
                  Text(
                    "kimdaeyeub",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gaps.h8,
                  Text(
                    "응아아아악",
                  )
                ],
              ),
              Gaps.v10,
              GestureDetector(
                onTap: () => _onTapAllComments(context),
                child: const Opacity(
                  opacity: 0.4,
                  child: Text(
                    "뎃글 11개 모두 보기",
                  ),
                ),
              ),
              Gaps.v4,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "sadasd",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gaps.h8,
                      Text(
                        "으아아아악",
                      ),
                    ],
                  ),
                  FaIcon(
                    FontAwesomeIcons.heart,
                    size: Sizes.size12,
                  ),
                ],
              ),
              Gaps.v4,
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        VerticalDivider(
                          thickness: 2,
                          width: 40,
                          color: Colors.grey.shade300,
                        ),
                        const Text(
                          "sadasd",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Gaps.h8,
                        const Text(
                          "으아아아악",
                        ),
                      ],
                    ),
                    const FaIcon(
                      FontAwesomeIcons.heart,
                      size: Sizes.size12,
                    ),
                  ],
                ),
              ),
              Gaps.v10,
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     const Row(
              //       children: [
              //         CircleAvatar(
              //           radius: Sizes.size16,
              //         ),
              //         Gaps.h4,
              //         Opacity(
              //           opacity: 0.4,
              //           child: Text(
              //             "댓글 달기...",
              //           ),
              //         ),
              //       ],
              //     ),
              //     Row(
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         const Text(
              //           "❤️",
              //         ),
              //         const Text(
              //           "🙌",
              //         ),
              //         FaIcon(
              //           FontAwesomeIcons.plus,
              //           color: Colors.grey.shade300,
              //           size: Sizes.size16,
              //         ),
              //       ],
              //     )
              //   ],
              // )
            ],
          ),
        ),
        Gaps.v12,
      ],
    );
  }
}
