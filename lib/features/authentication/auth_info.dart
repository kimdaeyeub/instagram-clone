import 'package:flutter/material.dart';

class AuthInfoScreen extends StatefulWidget {
  const AuthInfoScreen({super.key});

  @override
  State<AuthInfoScreen> createState() => _AuthInfoScreenState();
}

class _AuthInfoScreenState extends State<AuthInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("사용자 정보"),
      ),
    );
  }
}
