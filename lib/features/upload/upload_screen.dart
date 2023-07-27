import 'package:flutter/material.dart';
import '../../constants/sizes.dart';

class UploadScreen extends StatelessWidget {
  final bool isCurrentTab;
  const UploadScreen({
    super.key,
    required this.isCurrentTab,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Upload",
          style: TextStyle(
            fontSize: Sizes.size44,
          ),
        ),
      ),
    );
  }
}
