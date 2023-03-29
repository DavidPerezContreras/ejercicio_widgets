import 'package:ejercicio_widgets/view/page/about/about_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  //Controla la navegación dentro de HomePage, es distinto al del BottomNavigationBar
  PageController homePageController = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      //physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        WelcomeWidget(homePageController, key),
        const FilmsWidget(),
      ],
    );
  }
}

class FilmsWidget extends StatelessWidget {
  const FilmsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Text("Hola");
        },
      ),
    );
  }
}

class WelcomeWidget extends StatefulWidget {
  WelcomeWidget(this.homePageController, Key? key) : super(key: key);

  PageController homePageController;

  @override
  State<WelcomeWidget> createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
              "Welcome!, You are about to discover a lot of new films. Enjoy!"),
          ElevatedButton(
            onPressed: () {
              widget.homePageController.jumpToPage(1);
            },
            child: const Text("Let's go"),
          ),
        ]),
      ),
    );
  }
}
