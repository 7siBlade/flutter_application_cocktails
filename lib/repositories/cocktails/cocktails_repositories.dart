import 'package:dio/dio.dart';
import '../../models/cocktails.dart';

class CocktailsRepositoriry {
  Future<List<Cocktails>> getCocktails() async {
    final response = await Dio().get(
        'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=');
    final data = response.data as Map<String, dynamic>;
    final drinks = data['drinks'] as List<dynamic>;
    //debugPrint(drinks.toString());
    final dataList = drinks.map((e) => Cocktails(
      name: e['strDrink'] as String,
      imgeURL: e['strDrinkThumb'] as String,
    )).toList();
    return dataList;
  }
}