import 'package:bottom_sheet_bug/bottom_sheet_dialog.dart';
import 'package:flutter/material.dart';

import 'blank_screen.dart';
import 'home_screen.dart';

class AppHomeScreen extends StatefulWidget {
  const AppHomeScreen({Key? key}) : super(key: key);

  @override
  _AppHomeScreenState createState() => _AppHomeScreenState();
}

class _AppHomeScreenState extends State<AppHomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BottomSheetCustomDialog().showBottomSheetDialog(context);
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff00ff00),
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (val) {
          setState(() {
            _currentIndex = val;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              color: Colors.black,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.breakfast_dining,
              color: Colors.black,
            ),
            label: "Homez",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              color: Colors.black,
            ),
            label: "Homey",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              color: Colors.black,
            ),
            label: "Homex",
          )
        ],
      ),
      body: Center(
        child: bottomNavWidget(),
      ),
    );
  }

  Widget bottomNavWidget() {
    switch (_currentIndex) {
      case 0:
        // analyticsService.sendAnalyticsScreenEvent("HomeScreen");
        return const HomeScreen();
      case 1:
        // analyticsService.sendAnalyticsScreenEvent("SocialConnect");
        return const BlankScreen();
      case 2:
        //analyticsService.sendAnalyticsScreenEvent("AboutScreen");
        return const BlankScreen();
      case 3:
        //analyticsService.sendAnalyticsScreenEvent("FaqsScreen");
        return const BlankScreen();
      default:
        return const BlankScreen();
    }
  }
}
