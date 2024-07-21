import 'package:dio/dio.dart';
import '../../models/Cocktails.dart';
import '../../pages/favorites/favorites_manager.dart';

class FavoritesCocktailsRepository {
  Future<List<Cocktails>> getCocktails() async {
    final names = FavoritesManager.favorites;
    List<Cocktails> cocktailsList = [];

    for (String name in names) {
      final response = await Dio().get(
          'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=$name');
      final data = response.data as Map<String, dynamic>;
      final drinks = data['drinks'] as List<dynamic>;

      for (var drink in drinks) {
        Cocktails cocktail = Cocktails(
          name: drink['strDrink'],
          imgeURL: drink['strDrinkThumb'],
          Instructions: drink['strInstructions'],
          Ingredient1: drink['strIngredient1'] ?? '',
          Ingredient2: drink['strIngredient2'] ?? '',
          Ingredient3: drink['strIngredient3'] ?? '',
          Ingredient4: drink['strIngredient4'] ?? '',
          Ingredient5: drink['strIngredient5'] ?? '',
          Ingredient6: drink['strIngredient6'] ?? '',
          Ingredient7: drink['strIngredient7'] ?? '',
          Ingredient8: drink['strIngredient8'] ?? '',
          Ingredient9: drink['strIngredient9'] ?? '',
          Ingredient10: drink['strIngredient10'] ?? '',
          Ingredient11: drink['strIngredient11'] ?? '',
          Ingredient12: drink['strIngredient12'] ?? '',
          Ingredient13: drink['strIngredient13'] ?? '',
          Ingredient14: drink['strIngredient14'] ?? '',
          Ingredient15: drink['strIngredient15'] ?? '',
          Measure1: drink['strMeasure1'] ?? '',
          Measure2: drink['strMeasure2'] ?? '',
          Measure3: drink['strMeasure3'] ?? '',
          Measure4: drink['strMeasure4'] ?? '',
          Measure5: drink['strMeasure5'] ?? '',
          Measure6: drink['strMeasure6'] ?? '',
          Measure7: drink['strMeasure7'] ?? '',
          Measure8: drink['strMeasure8'] ?? '',
          Measure9: drink['strMeasure9'] ?? '',
          Measure10: drink['strMeasure10'] ?? '',
          Measure11: drink['strMeasure11'] ?? '',
          Measure12: drink['strMeasure12'] ?? '',
          Measure13: drink['strMeasure13'] ?? '',
          Measure14: drink['strMeasure14'] ?? '',
          Measure15: drink['strMeasure15'] ?? '',
        );

        cocktailsList.add(cocktail);
      }
    }

    return cocktailsList;
  }
}
