import 'package:flutter/material.dart';
import 'package:twitch_clone/screens/feed_screen.dart';
import 'package:twitch_clone/screens/live_screen.dart';

import '../utils/colors.dart';
// import 'package:provider/provider.dart';
// import 'package:twitch_clone/provider/user_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 1;
  List<Widget> pages = [
    const FeedScreen(),
    const LiveScreen(),
    Center(
      child: Text('Browser'),
    )
  ];

  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    //   final userProvider = Provider.of<UserProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: pages[_page],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onPageChanged,
          currentIndex: _page,
          selectedItemColor: buttonColor,
          unselectedItemColor: primaryColor,
          unselectedFontSize: 10,
          backgroundColor: backgroundColor,
          selectedLabelStyle: const TextStyle(fontSize: 14),
          unselectedLabelStyle: const TextStyle(fontSize: 14),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: 'Following',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_rounded,
              ),
              label: 'Go Live! 📼',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.copy,
              ),
              label: 'Browse',
            ),
          ],
        ),
      ),
    );
  }
}
