import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/features/search/search_detail_screen.dart';

class SearchScreen extends StatelessWidget {
  final bool isCurrentTab;
  final ScrollController scrollController;
  const SearchScreen({
    super.key,
    required this.isCurrentTab,
    required this.scrollController,
  });

  void _onMoveDetailScreen(BuildContext context) {
    //이동을 하여도 BottomNavigationBar가 유지되도록 수정하여야 함.

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SearchDetailScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CupertinoSearchTextField(),
      ),
      body: GridView.builder(
        controller: scrollController,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => _onMoveDetailScreen(context),
          child: Image.asset(
            "assets/images/placeholder.jpg",
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
