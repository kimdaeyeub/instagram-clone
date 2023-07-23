import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/constants/gaps.dart';

import '../../../constants/sizes.dart';

class InstagramPost extends StatelessWidget {
  const InstagramPost({super.key});

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
                  ),
                  Gaps.h10,
                  Text(
                    "danbi_babo",
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
        // Image.asset(
        //   "assets/images/placeholder.jpg",
        //   fit: BoxFit.fitWidth,
        // ),
        Image.network(
          "https://cdn.slist.kr/news/photo/202303/434258_701143_4115.jpg",
          fit: BoxFit.fitWidth,
        ),
        Gaps.v20,
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.size16,
          ),
          child: Column(
            children: [
              Row(
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
              Row(
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
              Row(
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
              )
            ],
          ),
        )
      ],
    );
  }
}
