import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/constants/gaps.dart';

import '../../../constants/sizes.dart';

class CommentsModal extends StatelessWidget {
  const CommentsModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: const [
          Center(
            child: FaIcon(
              FontAwesomeIcons.paperPlane,
            ),
          ),
          FaIcon(
            FontAwesomeIcons.paperPlane,
            color: Colors.transparent,
          ),
        ],
        automaticallyImplyLeading: false,
        title: const Text(
          "댓글",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 26,
              foregroundImage: AssetImage("assets/images/placeholder.jpg"),
            ),
            title: Row(
              children: [
                Text(
                  "asx_sd",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: Sizes.size12 + Sizes.size2,
                  ),
                ),
                Gaps.h4,
                Opacity(
                  opacity: 0.4,
                  child: Text(
                    "4시간전",
                    style: TextStyle(
                      fontSize: Sizes.size12 + Sizes.size2,
                    ),
                  ),
                )
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gaps.v10,
                Text(
                  "The height of the VerticalDivider in Flutter can be controlled by adjusting the height of its parent widget, such as a Container or a Row.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Gaps.v12,
                Opacity(
                  opacity: 0.4,
                  child: Text(
                    "답글달기",
                  ),
                ),
              ],
            ),
            trailing: FaIcon(FontAwesomeIcons.heart),
          )
        ],
      ),
    );
  }
}
