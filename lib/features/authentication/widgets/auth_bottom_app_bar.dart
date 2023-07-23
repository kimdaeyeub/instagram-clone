import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/gaps.dart';
import 'package:instagram_clone/constants/sizes.dart';

class AuthBottomAppBar extends StatelessWidget {
  final String text;
  final String buttonText;
  final void Function()? onPressedFunction;
  const AuthBottomAppBar({
    super.key,
    required this.text,
    required this.buttonText,
    required this.onPressedFunction,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.grey.shade200,
      padding: const EdgeInsets.symmetric(
        vertical: Sizes.size28,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: Sizes.size16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Gaps.h8,
          GestureDetector(
            onTap: onPressedFunction,
            child: Text(
              buttonText,
              style: const TextStyle(
                fontSize: Sizes.size16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF4294F6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
