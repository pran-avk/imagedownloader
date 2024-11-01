import 'package:flutter/material.dart';
import 'package:search_bar/pages/account.dart';
import 'package:search_bar/pages/explore.dart';
import 'package:search_bar/pages/home_pages.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex =0;
  List<Widget>_pages=[];
  @override
  void initState(){
    super.initState();
    _pages=[const HomePage(),const Explore(),const Account()];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:IndexedStack(
      index: _currentIndex,
      children: _pages,
    ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          unselectedItemColor: Colors.grey,
          iconSize: 32,
          currentIndex: _currentIndex,
          onTap: (index){
            setState(() {
              _currentIndex=index;
            });
          },
            items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.account_box_sharp),label: 'Account'),
        ]),
    );
  }
}
