import 'package:clonetaxi/src/resources/widget/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/main_app';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(
          () => _currentIndex = i,
        ),
        selectedItemColor: Colors.red[900],
        unselectedItemColor: Colors.red[300],
        selectedColorOpacity: 0.2,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        items: [
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.house,
              size: 20,
            ),
            title: Text("Home"),
          ),
          SalomonBottomBarItem(
            icon: Icon(
              Icons.grid_3x3,
              size: 20,
            ),
            title: Text("Apps"),
          ),
          SalomonBottomBarItem(
            icon: Icon(
              Icons.add,
              size: 20,
            ),
            title: Text("Add"),
          ),
          SalomonBottomBarItem(
            icon: Icon(
              Icons.notifications,
              size: 20,
            ),
            title: Text("Notifications"),
          ),
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.solidUser,
              size: 20,
            ),
            title: Text("Profile"),
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreen(),
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
