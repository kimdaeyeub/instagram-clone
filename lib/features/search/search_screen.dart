import 'package:flutter/material.dart';
import '../../constants/sizes.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Search",
          style: TextStyle(
            fontSize: Sizes.size44,
          ),
        ),
      ),
    );
  }
}
