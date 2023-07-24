import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/constants/gaps.dart';

import '../../../constants/sizes.dart';
import 'comments_tile.dart';

class CommentsModal extends StatefulWidget {
  const CommentsModal({super.key});

  @override
  State<CommentsModal> createState() => _CommentsModalState();
}

class _CommentsModalState extends State<CommentsModal> {
  bool _isFocus = false;
  late TextEditingController _textEditingController;
  String _inputText = "";

  void _unFocus(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  void _onTap() {
    setState(() {
      _isFocus = true;
    });
  }

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _textEditingController.addListener(() {
      _inputText = _textEditingController.text;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => _unFocus(context),
      child: Container(
        height: _isFocus ? size.height * 0.85 : size.height * 0.6,
        // height: size.height,
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Scaffold(
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
          body: Stack(
            children: [
              const SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: Sizes.size80 + Sizes.size52,
                  ),
                  child: Column(
                    children: [
                      CommentsTile(),
                      CommentsTile(),
                      CommentsTile(),
                      CommentsTile(),
                      CommentsTile(),
                      CommentsTile(),
                      CommentsTile(),
                      CommentsTile(),
                      CommentsTile(),
                      CommentsTile(),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                width: MediaQuery.of(context).size.width,
                child: BottomAppBar(
                  elevation: 1,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: Sizes.size20,
                      horizontal: Sizes.size12,
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          foregroundImage:
                              AssetImage("assets/images/placeholder.jpg"),
                        ),
                        Gaps.h10,
                        Expanded(
                          child: TextField(
                            controller: _textEditingController,
                            onTap: _onTap,
                            decoration: InputDecoration(
                              suffix: _inputText.isEmpty
                                  ? null
                                  : Text(
                                      "게시",
                                      style: TextStyle(
                                        color: Colors.blue.shade300,
                                      ),
                                    ),
                              isDense: true,
                              hintText: "댓글 달기...",
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(
                                  Sizes.size10,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
