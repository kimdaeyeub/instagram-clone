import 'package:flutter/material.dart';
import 'package:instagram_clone/features/main_navigation/main_navigation_screen.dart';

void main() {
  runApp(const Instagram());
}

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainNavigationScreen(),
      theme: ThemeData(
        splashFactory: NoSplash.splashFactory,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
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
