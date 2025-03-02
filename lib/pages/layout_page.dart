import 'package:flutter/material.dart';

import 'crucloop2_page.dart';
import 'crucloop3_page.dart';
import 'myPage/my_page.dart';
import 'top/top_page.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key, required this.title});

  final String title;

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int _currentIndex = 0;

  final pageViews = [TopPage(), Crucloop2Page(), Crucloop3Page(), MyPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 64, 64, 64),
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
      ),
      body: pageViews[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xff00a5a7),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/images/top.png'), width: 30),
            label: 'Top',
            backgroundColor: Color.fromARGB(255, 64, 64, 64),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/CruCLoop2.png'),
              width: 30,
            ),
            label: 'CruCLoop2',
            backgroundColor: Color.fromARGB(255, 64, 64, 64),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/CruCLoop3.png'),
              width: 30,
            ),
            label: 'CruCLoop3',
            backgroundColor: Color.fromARGB(255, 64, 64, 64),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/myPage.png'),
              width: 30,
            ),
            label: 'MyPage',
            backgroundColor: Color.fromARGB(255, 64, 64, 64),
          ),
        ],
      ),
    );
  }
}
