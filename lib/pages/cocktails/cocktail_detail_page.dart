import 'package:flutter/material.dart';

class CocktailDetailPage extends StatelessWidget {
  final String cocktailName;
  final String cocktailImageURL;
  final String cocktailInstructions;
  final String cocktailIng1;
  final String cocktailIng2;
  final String cocktailIng3;
  final String cocktailIng4;
  final String cocktailIng5;
  final String cocktailIng6;
  final String cocktailIng7;
  final String cocktailIng8;
  final String cocktailIng9;
  final String cocktailIng10;
  final String cocktailIng11;
  final String cocktailIng12;
  final String cocktailIng13;
  final String cocktailIng14;
  final String cocktailIng15;
  final String Measure1;
  final String Measure2;
  final String Measure3;
  final String Measure4;
  final String Measure5;
  final String Measure6;
  final String Measure7;
  final String Measure8;
  final String Measure9;
  final String Measure10;
  final String Measure11;
  final String Measure12;
  final String Measure13;
  final String Measure14;
  final String Measure15;
  final bool showAppBar;


  List<String> get ingredients => [
        cocktailIng1,
        cocktailIng2,
        cocktailIng3,
        cocktailIng4,
        cocktailIng5,
        cocktailIng6,
        cocktailIng7,
        cocktailIng8,
        cocktailIng9,
        cocktailIng10,
        cocktailIng11,
        cocktailIng12,
        cocktailIng13,
        cocktailIng14,
        cocktailIng15,
      ];

  List<String> get measures => [
        Measure1,
        Measure2,
        Measure3,
        Measure4,
        Measure5,
        Measure6,
        Measure7,
        Measure8,
        Measure9,
        Measure10,
        Measure11,
        Measure12,
        Measure13,
        Measure14,
        Measure15,
      ];

  const CocktailDetailPage({
    Key? key,
    required this.cocktailName,
    required this.cocktailImageURL,
    required this.cocktailInstructions,
    required this.cocktailIng1,
    required this.cocktailIng2,
    required this.cocktailIng3,
    required this.cocktailIng4,
    required this.cocktailIng5,
    required this.cocktailIng6,
    required this.cocktailIng7,
    required this.cocktailIng8,
    required this.cocktailIng9,
    required this.cocktailIng10,
    required this.cocktailIng11,
    required this.cocktailIng12,
    required this.cocktailIng13,
    required this.cocktailIng14,
    required this.cocktailIng15,
    required this.Measure1,
    required this.Measure2,
    required this.Measure3,
    required this.Measure4,
    required this.Measure5,
    required this.Measure6,
    required this.Measure7,
    required this.Measure8,
    required this.Measure9,
    required this.Measure10,
    required this.Measure11,
    required this.Measure12,
    required this.Measure13,
    required this.Measure14,
    required this.Measure15,
    this.showAppBar = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar ? AppBar(
        title: Text(cocktailName),
      ) : null,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.network(
                cocktailImageURL,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              Text(
                cocktailName,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                'Instructions: ',
                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(cocktailInstructions),
              const SizedBox(height: 16),
              const Text(
                    'Ingredients:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ...ingredients.where((ing) => ing != 'null' && ing !='').map((ing) => Text(ing)).toList(),
                const SizedBox(height: 16,),
                if (measures.any((mes) => mes.isNotEmpty))
                  const Text(
                    'Measures:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ...measures.where((mes) => mes != 'null'&& mes !='').map((mes) => Text(mes)).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
