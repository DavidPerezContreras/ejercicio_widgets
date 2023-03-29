import 'package:ejercicio_widgets/view/page/about/about_page.dart';
import 'package:ejercicio_widgets/view/page/home/home_page.dart';
import 'package:ejercicio_widgets/view/widget/my_bottomnavigationbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Ejercicio Widgets",
        home: Scaffold(
          appBar: AppBar(title: Text("Ejercicio Widgets")),
          bottomNavigationBar: MyBottomNavigationBar(pageController, key),
          body: PageView(
            controller: pageController,
            children: [HomePage(), AboutPage()],
          ),
        ));
  }
}
