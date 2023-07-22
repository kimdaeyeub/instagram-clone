import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/gaps.dart';
import 'package:instagram_clone/constants/sizes.dart';
import 'package:instagram_clone/features/authentication/email_confirmation_screen.dart';
import 'package:instagram_clone/features/authentication/widgets/auth_button.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  //이메일 본인 확인 페이지 이동
  void _onMoveEmailConfirmationScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const EmailConfirmationScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size32,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Instagram",
                  style: TextStyle(
                    fontFamily: "LogoFont",
                    fontSize: Sizes.size44,
                  ),
                ),
                Gaps.v40,
                GestureDetector(
                  onTap: _onMoveEmailConfirmationScreen,
                  child: const AuthButton(
                    text: "Create New Account",
                    dismissed: true,
                  ),
                ),
                Gaps.v20,
                FractionallySizedBox(
                  widthFactor: 1,
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                      vertical: Sizes.size20,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                        fontSize: Sizes.size16,
                        color: Color(0xFF4294F6),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Gaps.v96,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
