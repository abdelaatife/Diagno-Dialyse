import 'package:ddialyse/screens/const.dart';
import 'package:ddialyse/screens/homePages/homepage.dart';
import 'package:ddialyse/screens/homePages/measure.dart';
import 'package:ddialyse/var.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ionicons/ionicons.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    PageController _pageController = PageController(initialPage: 0);

    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (newindex) {
          setState(() {
            index = newindex;
          });
        },
        children: [
          Homepage(),
          measure(),
          Container(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primary,
        elevation: 1,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.pulse_outline),
            label: 'Measure',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.bar_chart_outline),
            label: 'Analytics',
          ),
        ],
        currentIndex: index,
        selectedItemColor: bleu,
        unselectedItemColor: Colors.white,
        onTap: (index) {
          _pageController.animateToPage(index,
              duration: const Duration(milliseconds: 1), curve: Curves.ease);
        },
      ),
    );
  }
}

class IonIcons {}
