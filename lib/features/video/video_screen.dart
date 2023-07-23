import 'package:flutter/material.dart';
import '../../constants/sizes.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Video",
          style: TextStyle(
            fontSize: Sizes.size44,
          ),
        ),
      ),
    );
  }
}
