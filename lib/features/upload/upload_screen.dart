import 'package:flutter/material.dart';
import '../../constants/sizes.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({super.key});

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
