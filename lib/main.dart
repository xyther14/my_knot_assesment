import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:myknotassesment/screens/ProfilePage.dart';
import 'package:myknotassesment/screens/TransactionPage.dart';
import 'package:myknotassesment/screens/calendar.dart';
import 'package:myknotassesment/screens/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyKnot(),
    )
  );
}

class MyKnot extends StatefulWidget {
  @override
  _MyKnotState createState() => _MyKnotState();
}

class _MyKnotState extends State<MyKnot> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }



  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          backgroundColor: Colors.white,
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                inactiveColor: Colors.black87,
                title: Text('Home'),
                icon: Icon(Icons.home,)
            ),
            BottomNavyBarItem(
                inactiveColor: Colors.black87,
                title: Text('Status'),
                icon: Icon(Icons.monetization_on,)
            ),
            BottomNavyBarItem(
                inactiveColor: Colors.black87,
                title: Text('Calendar'),
                icon: Icon(Icons.speaker_notes,)
            ),
            BottomNavyBarItem(
                inactiveColor: Colors.black87,
                title: Text('Profile'),
                icon: Icon(Icons.supervised_user_circle,)
            ),
          ]
      ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children:<Widget>[
            HomePage(),
            TransactionPage(),
            CalendarPage(),
            ProfilePage(),
          ],
        ),
      ),
    );
  }
}



