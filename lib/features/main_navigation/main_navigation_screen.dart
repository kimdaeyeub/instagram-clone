import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/features/home/home_screen.dart';
import 'package:instagram_clone/features/profile/profile_screen.dart';
import 'package:instagram_clone/features/search/search_screen.dart';
import 'package:instagram_clone/features/upload/upload_screen.dart';
import 'package:instagram_clone/features/video/video_screen.dart';

import '../../constants/sizes.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  final GlobalKey<NavigatorState> _searchKey = GlobalKey<NavigatorState>();
  int _selectedIndex = 0;
  final bool _onMoveTopScreen = false;
  late final ScrollController _homeScrollController;
  late final ScrollController _searcScrollController;

  @override
  void initState() {
    super.initState();
    _homeScrollController = ScrollController();
    _searcScrollController = ScrollController();
    _scrollControllers.addAll([_homeScrollController, _searcScrollController]);
  }

  final List<ScrollController> _scrollControllers = [];

// TODO
  //BottomNavigation클릭시 항목이동
  void _onTapBottomNavigation(int value) {
    if (_selectedIndex == value) {
      _scrollControllers[value].animateTo(
        0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    }
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(
          color: Colors.black,
        ),
        unselectedIconTheme: const IconThemeData(
          color: Colors.black,
        ),
        currentIndex: _selectedIndex,
        onTap: (value) => _onTapBottomNavigation(value),
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.house,
              size: Sizes.size28,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: Sizes.size28,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.squarePlus,
              size: Sizes.size28,
            ),
            label: "Video",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.clapperboard,
              size: Sizes.size28,
            ),
            label: "Video",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.circleUser,
              size: Sizes.size28,
            ),
            label: "Video",
          ),
        ],
      ),
      body: Stack(
        children: [
          Offstage(
            offstage: _selectedIndex != 0,
            child: HomeScreen(
              isCurrentTab: _selectedIndex == 0,
              scrollController: _homeScrollController,
            ),
          ),
          Offstage(
            offstage: _selectedIndex != 1,
            // child: const SearchScreen(),
            child: Navigator(
              key: _searchKey,
              onGenerateRoute: (settings) => MaterialPageRoute(
                builder: (context) => SearchScreen(
                  isCurrentTab: _selectedIndex == 1,
                  scrollController: _searcScrollController,
                ),
              ),
            ),
          ),
          Offstage(
            offstage: _selectedIndex != 2,
            child: UploadScreen(
              isCurrentTab: _selectedIndex == 2,
            ),
          ),
          Offstage(
            offstage: _selectedIndex != 3,
            child: const VideoScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 4,
            child: ProfileScreen(
              isCurrentTab: _selectedIndex == 4,
            ),
          ),
        ],
      ),
    );
  }
}
