import 'package:dio/dio.dart';
import '../../models/cocktails.dart';

class RandomCocktailsRepository {
  Future<List<Cocktails>> getCocktails() async {
    final response = await Dio().get(
        'https://www.thecocktaildb.com/api/json/v1/1/random.php');
    final data = response.data as Map<String, dynamic>;
    final drinks = data['drinks'] as List<dynamic>;
    final dataList = drinks.map((e) => Cocktails(
      name: e['strDrink'] as String,
      imgeURL: e['strDrinkThumb'] as String,
      Instructions: e['strInstructions'] as String,
      Ingredient1: e['strIngredient1'].toString(),
      Ingredient2: e['strIngredient2'].toString(),
      Ingredient3: e['strIngredient3'].toString(),
      Ingredient4: e['strIngredient4'].toString(),
      Ingredient5: e['strIngredient5'].toString(),
      Ingredient6: e['strIngredient6'].toString(),
      Ingredient7: e['strIngredient7'].toString(),
      Ingredient8: e['strIngredient8'].toString(),
      Ingredient9: e['strIngredient9'].toString(),
      Ingredient10: e['strIngredient10'].toString(),
      Ingredient11: e['strIngredient11'].toString(),
      Ingredient12: e['strIngredient12'].toString(),
      Ingredient13: e['strIngredient13'].toString(),
      Ingredient14: e['strIngredient14'].toString(),
      Ingredient15: e['strIngredient15'].toString(),
      Measure1: e['strMeasure1'].toString(),
      Measure2: e['strMeasure2'].toString(),
      Measure3: e['strMeasure3'].toString(),
      Measure4: e['strMeasure4'].toString(),
      Measure5: e['strMeasure5'].toString(),
      Measure6: e['strMeasure6'].toString(),
      Measure7: e['strMeasure7'].toString(),
      Measure8: e['strMeasure8'].toString(),
      Measure9: e['strMeasure9'].toString(),
      Measure10: e['strMeasure10'].toString(),
      Measure11: e['strMeasure11'].toString(),
      Measure12: e['strMeasure12'].toString(),
      Measure13: e['strMeasure13'].toString(),
      Measure14: e['strMeasure14'].toString(),
      Measure15: e['strMeasure15'].toString(),
    )).toList();
    return dataList;
  }
}
