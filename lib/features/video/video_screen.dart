import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  final List<Color> _colors = [
    Colors.teal,
    Colors.red,
    Colors.deepPurple,
    Colors.amber,
    Colors.teal,
    Colors.red,
    Colors.deepPurple,
    Colors.amber,
    Colors.deepPurple,
    Colors.amber,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => Container(
            color: _colors[index],
            child: Center(
              child: Text(
                "$index",
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
