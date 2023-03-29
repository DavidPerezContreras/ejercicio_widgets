import 'dart:convert';
import 'dart:math';

import 'package:ejercicio_widgets/main.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  MyBottomNavigationBar(this.pageController, Key? key) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();

  PageController pageController;
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = widget.pageController;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "About", icon: Icon(Icons.zoom_out))
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        //Navigator.pushNamed(context, MyApp.routes.keys.elementAt(index));
        pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
