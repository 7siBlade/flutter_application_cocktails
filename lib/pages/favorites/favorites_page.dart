import 'package:flutter/material.dart';
import '../../models/Cocktails.dart';
import '../../repositories/favorites/favorites_cocktails_repositories.dart';
import '../cocktails/cocktails_item.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  late Future<List<Cocktails>> _cocktailsFuture;

  @override
  void initState() {
    super.initState();
    _cocktailsFuture = FavoritesCocktailsRepository().getCocktails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Cocktails>>(
        future: _cocktailsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator()
              );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}')
               );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No favorites added yet.')
               );
          } else {
            final cocktails = snapshot.data!;
            return ListView.builder(
              itemCount: cocktails.length,
              itemBuilder: (context, index) {
                final cocktail = cocktails[index];
                return CocktailsItem(
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
                );
              },
            );
          }
        },
      ),
    );
  }
}
