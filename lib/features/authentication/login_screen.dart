import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/gaps.dart';
import 'package:instagram_clone/features/authentication/widgets/auth_bottom_app_bar.dart';
import 'package:instagram_clone/features/authentication/widgets/auth_button.dart';
import 'package:instagram_clone/features/main_navigation/main_navigation_screen.dart';

import '../../constants/sizes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Map<String, String> _loginData = {};

  //login button click
  void _onSubmit() {
    if (_formKey.currentState == null) return;
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const MainNavigationScreen(),
        ),
        // (route) => false,
      );
    }
  }

  //UnFocus
  void _unFocus() {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _unFocus,
      child: Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: AuthBottomAppBar(
          text: "계정이 없으신가요?",
          buttonText: "회원가입",
          onPressedFunction: () {},
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size32,
          ),
          child: Column(
            children: [
              const Text(
                "Login Instagram",
                style: TextStyle(
                  fontSize: Sizes.size32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gaps.v44,
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        // String을 리턴하면 에러가 있다는 의미, 에러가 없다면 null을 리턴
                        final RegExp exp = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                        if (exp.hasMatch(value!) && value.isNotEmpty) {
                          return null;
                        } else {
                          return "이메일의 형식으로 작성해야합니다.";
                        }
                      },
                      onSaved: (newValue) {
                        _loginData["email"] = newValue!;
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(
                            Sizes.size8,
                          ),
                        ),
                      ),
                    ),
                    Gaps.v10,
                    TextFormField(
                      validator: (value) {
                        if (value!.length < 7) {
                          return "비밀번호가 너무 짧습니다.";
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        _loginData["password"] = newValue!;
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(
                            Sizes.size8,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gaps.v20,
              GestureDetector(
                onTap: _onSubmit,
                child: const AuthButton(
                  text: "로그인",
                  dismissed: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
