import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:tp3_app/chatPage.dart';
import 'package:tp3_app/homePage.dart';
import 'package:tp3_app/profilePage.dart';
import 'package:tp3_app/searchPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentpage = 0;
  List<Widget> list = [homePage(), searchPage(), chatPage(), profilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentpage, children: list),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: [
          CurvedNavigationBarItem(child: Icon(Icons.home), label: "Home"),
          CurvedNavigationBarItem(child: Icon(Icons.search), label: "Search"),
          CurvedNavigationBarItem(child: Icon(Icons.message), label: "Chat"),
          CurvedNavigationBarItem(
            child: Icon(Icons.perm_identity),
            label: "Profile",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentpage = index;
          });
        },
      ),
    );
  }
}
