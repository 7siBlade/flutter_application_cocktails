import 'dart:async';

import 'package:flutter/material.dart';
import '../../models/cocktails.dart';
import '../../repositories/random/random_repositories.dart';
import '../cocktails/cocktail_detail_page.dart';

class RandomCocktailPage extends StatefulWidget {
  const RandomCocktailPage({Key? key}) : super(key: key);

  @override
  _RandomCocktailPageState createState() => _RandomCocktailPageState();
}

class _RandomCocktailPageState extends State<RandomCocktailPage> {
  late Future<List<Cocktails>> _futureCocktail;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _fetchRandomCocktail();
    _timer = Timer.periodic(const Duration(seconds: 10), (timer) {
      _fetchRandomCocktail();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _fetchRandomCocktail() {
    if (mounted) {
      setState(() {
        _futureCocktail = RandomCocktailsRepository().getCocktails();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Cocktails>>(
        future: _futureCocktail,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No cocktail found.'));
          } else {
            final cocktail = snapshot.data!.first;
            return CocktailDetailPage(
              cocktailName: cocktail.name,
              cocktailImageURL: cocktail.imgeURL,
              cocktailInstructions: cocktail.Instructions,
              cocktailIng1: cocktail.Ingredient1,
              cocktailIng2: cocktail.Ingredient2,
              cocktailIng3: cocktail.Ingredient3,
              cocktailIng4: cocktail.Ingredient4,
              cocktailIng5: cocktail.Ingredient5,
              cocktailIng6: cocktail.Ingredient6,
              cocktailIng7: cocktail.Ingredient7,
              cocktailIng8: cocktail.Ingredient8,
              cocktailIng9: cocktail.Ingredient9,
              cocktailIng10: cocktail.Ingredient10,
              cocktailIng11: cocktail.Ingredient11,
              cocktailIng12: cocktail.Ingredient12,
              cocktailIng13: cocktail.Ingredient13,
              cocktailIng14: cocktail.Ingredient14,
              cocktailIng15: cocktail.Ingredient15,
              Measure1: cocktail.Measure1,
              Measure2: cocktail.Measure2,
              Measure3: cocktail.Measure3,
              Measure4: cocktail.Measure4,
              Measure5: cocktail.Measure5,
              Measure6: cocktail.Measure6,
              Measure7: cocktail.Measure7,
              Measure8: cocktail.Measure8,
              Measure9: cocktail.Measure9,
              Measure10: cocktail.Measure10,
              Measure11: cocktail.Measure11,
              Measure12: cocktail.Measure12,
              Measure13: cocktail.Measure13,
              Measure14: cocktail.Measure14,
              Measure15: cocktail.Measure15,
              showAppBar: false,
            );
          }
        },
      ),
    );
  }
}
