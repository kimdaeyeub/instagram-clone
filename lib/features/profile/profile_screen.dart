import 'package:flutter/material.dart';
import '../../constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Profile",
          style: TextStyle(
            fontSize: Sizes.size44,
          ),
        ),
      ),
    );
  }
}
