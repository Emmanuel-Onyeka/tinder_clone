import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './messages_screen.dart';
import './explore_screen.dart';
import 'home_screen.dart';
import './user_likes_screen.dart';
import './user_profile_screen.dart';

class TinderMain extends StatefulWidget {
  static const String routeName = '/home_screen';

  @override
  State<TinderMain> createState() => _TinderMainState();
}

class _TinderMainState extends State<TinderMain> {
  int _currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    ExploreScreen(),
    UserLikesScreen(),
    MessageScreen(),
    UserProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/logo.jpg'),
        leadingWidth: 50,
        title: const Text(
          'tinder',
          style: TextStyle(
            color: Color(0xFFFF377D),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          if (_currentIndex == 0)
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.solidBell,
                color: Colors.black54,
              ),
            ),
          if (_currentIndex == 0)
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_alt,
                color: Colors.black54,
              ),
            ),
          if (_currentIndex == 3 || _currentIndex == 4)
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.shield,
                color: Colors.black54,
              ),
            ),
          if (_currentIndex == 4)
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.black54,
              ),
            ),
        ],
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          print(index);
          setState(() {
            _currentIndex = index;
          });
        },
        elevation: 5,
        selectedItemColor: const Color(0xFFFF377D),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              width: 30,
              height: 30,
              'images/logo.jpg',
              fit: BoxFit.cover,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.microsoft,
              color: Colors.black54,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.splotch,
              color: Colors.black54,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.solidComment,
              color: Colors.black54,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.solidUser,
              color: Colors.black54,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
