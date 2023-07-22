import 'package:flutter/material.dart';
import 'package:instagram_clone/features/authentication/authentication_screen.dart';

void main() {
  runApp(const Instagram());
}

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthenticationScreen(),
      theme: ThemeData(
        textTheme: Typography.blackCupertino,
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
        ),
      ),
    );
  }
}
