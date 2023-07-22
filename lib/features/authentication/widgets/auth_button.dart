import 'package:flutter/material.dart';

import '../../../constants/sizes.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final bool dismissed;
  const AuthButton({
    super.key,
    required this.text,
    required this.dismissed,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 300,
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size20,
        ),
        decoration: BoxDecoration(
          color: dismissed ? const Color(0xFF4294F6) : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(
            Sizes.size8,
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: Sizes.size16,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
