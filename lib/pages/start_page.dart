import 'package:flutter/material.dart';
import 'package:flutter_application_cocktails/pages/cocktails/cocktails_page.dart';
import 'package:flutter_application_cocktails/pages/favorites/favorites_page.dart';
import 'package:flutter_application_cocktails/pages/random_cocktail/random_cocktail_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int index = 0;

  List<Widget> widgetList = const [
    // Text("data1"),
    // Text("data2"),
    // Text("data3"),
    CocktailsPage(),
    FavoritesPage(),
    RandomCocktailPage(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: widgetList[index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Cocktails",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_mark),
            label: "Random cocktail",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken),
            label: "Favorites",
          ),
        ],
      ),
    );
  }
}
