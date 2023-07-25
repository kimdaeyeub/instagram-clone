import 'package:flutter/material.dart';
import 'package:instagram_clone/features/common/widgets/post.dart';

class SearchDetailScreen extends StatefulWidget {
  const SearchDetailScreen({super.key});

  @override
  State<SearchDetailScreen> createState() => _SearchDetailScreenState();
}

class _SearchDetailScreenState extends State<SearchDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              InstagramPost(),
              InstagramPost(),
            ],
          ),
        ),
      ),
    );
  }
}
