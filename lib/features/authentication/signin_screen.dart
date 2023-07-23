import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/sizes.dart';
import 'package:instagram_clone/features/authentication/login_screen.dart';
import 'package:instagram_clone/features/authentication/widgets/auth_bottom_app_bar.dart';
import 'package:instagram_clone/features/authentication/widgets/auth_button.dart';
import 'package:instagram_clone/features/tutorials/tutorial_screen.dart';

import '../../constants/gaps.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Map<String, String> _formData = {};
  final String _confirmNumber = "1234";
  late TextEditingController _passwordController;
  late String _password = "";

  // 다음 페이지로 이동
  void _onNextTap() {
    if (_formKey.currentState != null) {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
      }
    }
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => const TutorialsScreen(),
      ),
      (route) => false,
    );
  }

  // 여백 클릭시 키보드 사라짐 구현
  void _unFocusTextField() {
    FocusScope.of(context).unfocus();
  }

  //하단의 '로그인'누를시 로그인 페이지로 이동
  void _onLoginTap() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
    _passwordController.addListener(() {
      setState(() {
        _password = _passwordController.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _unFocusTextField,
      child: Scaffold(
        bottomNavigationBar: AuthBottomAppBar(
          text: "계정이 이미 있으신가요?",
          buttonText: "로그인",
          onPressedFunction: _onLoginTap,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.size32,
              ),
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Gaps.v44,
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Sign up for",
                          style: TextStyle(
                            fontSize: Sizes.size28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " Instagram",
                          style: TextStyle(
                            fontFamily: "LogoFont",
                            fontSize: Sizes.size28,
                          ),
                        ),
                      ],
                    ),
                    Gaps.v44,
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          // Email입력창
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "이메일",
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(
                                  Sizes.size8,
                                ),
                              ),
                            ),
                            validator: (String? value) {
                              // String을 리턴하면 에러가 있다는 의미, 에러가 없다면 null을 리턴
                              final RegExp exp = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                              if (exp.hasMatch(value!) && value.isNotEmpty) {
                                return null;
                              } else {
                                return "이메일의 형식으로 작성해야합니다.";
                              }
                            },
                            onSaved: (String? newValue) {
                              _formData["email"] = newValue!;
                            },
                          ),
                          Gaps.v16,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(
                                  Sizes.size20,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(
                                    Sizes.size8,
                                  ),
                                ),
                                child: const Text(
                                  "이메일 인증",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Gaps.h10,
                              //인증번호 입력칸
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: "인증번호",
                                    filled: true,
                                    fillColor: Colors.grey.shade200,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(
                                        Sizes.size8,
                                      ),
                                    ),
                                  ),
                                  validator: (String? value) {
                                    if (value!.isEmpty) return "인증번호를 입력해주세요.";
                                    if (value == _confirmNumber) {
                                      return null;
                                    } else {
                                      return "인증번호를 확인해주세요.";
                                    }
                                  },
                                  onSaved: (String? newValue) {
                                    return;
                                  },
                                ),
                              ),
                            ],
                          ),
                          Gaps.v16,
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "이름",
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(
                                  Sizes.size8,
                                ),
                              ),
                            ),
                            validator: (String? value) {
                              if (value!.isNotEmpty) {
                                return null;
                              } else {
                                return "필수 입력란입니다.";
                              }
                            },
                            onSaved: (String? newValue) {
                              _formData["name"] = newValue!;
                            },
                          ),
                          Gaps.v16,
                          TextFormField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                              hintText: "비밀번호",
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(
                                  Sizes.size8,
                                ),
                              ),
                            ),
                            validator: (String? value) {
                              if (value!.isNotEmpty) {
                                if (value.length < 7) {
                                  return "비밀번호가 너무 짧습니다.";
                                }
                                return null;
                              } else {
                                return "필수 입력란입니다.";
                              }
                            },
                            onSaved: (String? newValue) {
                              _formData["password"] = newValue!;
                            },
                          ),
                          Gaps.v16,
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "비밀번호 확인",
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(
                                  Sizes.size8,
                                ),
                              ),
                            ),
                            validator: (String? value) {
                              if (value!.isNotEmpty) {
                                if (value != _password) {
                                  return "비밀번호를 다시 확인해주시기 바랍니다.";
                                }
                                return null;
                              } else {
                                return "필수 입력란입니다.";
                              }
                            },
                            onSaved: (String? newValue) {
                              _formData["name"] = newValue!;
                            },
                          ),
                        ],
                      ),
                    ),
                    Gaps.v36,
                    GestureDetector(
                      onTap: _onNextTap,
                      child: const AuthButton(
                        dismissed: true,
                        text: "Next",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
