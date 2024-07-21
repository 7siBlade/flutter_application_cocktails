import 'package:flutter/material.dart';
import 'package:flutter_application_cocktails/pages/cocktails/cocktails_item.dart';

import '../../models/cocktails.dart';
import '../../repositories/cocktails/cocktails_repositories.dart';

class CocktailsPage extends StatefulWidget {
  const CocktailsPage({super.key});

  @override
  State<CocktailsPage> createState() => _CocktailsPageState();
}

class _CocktailsPageState extends State<CocktailsPage> {
  List<Cocktails>? _cocktailsItems;

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(children: <Widget>[
      //_button(),
      _list(),
    ]);
  }

  Widget _list() {
    return (_cocktailsItems == null)
        ? const SizedBox()
        : ListView.separated(
            itemCount: _cocktailsItems!.length,
            padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 10);
            },
            itemBuilder: (BuildContext context, int index) {
              final cocktail = _cocktailsItems![index];
              //debugPrint(cocktail.toString());
              final cocktailName = cocktail.name;
              final cocktailImageURL = cocktail.imgeURL;
              final cocktailInstructions = cocktail.Instructions;
              final cocktailIng1 = cocktail.Ingredient1;
              final cocktailIng2 = cocktail.Ingredient2;
              final cocktailIng3 = cocktail.Ingredient3;
              final cocktailIng4 = cocktail.Ingredient4;
              final cocktailIng5 = cocktail.Ingredient5;
              final cocktailIng6 = cocktail.Ingredient6;
              final cocktailIng7 = cocktail.Ingredient7;
              final cocktailIng8 = cocktail.Ingredient8;
              final cocktailIng9 = cocktail.Ingredient9;
              final cocktailIng10 = cocktail.Ingredient10;
              final cocktailIng11 = cocktail.Ingredient11;
              final cocktailIng12 = cocktail.Ingredient12;
              final cocktailIng13 = cocktail.Ingredient13;
              final cocktailIng14 = cocktail.Ingredient14;
              final cocktailIng15 = cocktail.Ingredient15;
              final Measure1 = cocktail.Measure1;
              final Measure2 = cocktail.Measure2;
              final Measure3 = cocktail.Measure3;
              final Measure4 = cocktail.Measure4;
              final Measure5 = cocktail.Measure5;
              final Measure6 = cocktail.Measure6;
              final Measure7 = cocktail.Measure7;
              final Measure8 = cocktail.Measure8;
              final Measure9 = cocktail.Measure9;
              final Measure10 = cocktail.Measure10;
              final Measure11 = cocktail.Measure11;
              final Measure12 = cocktail.Measure12;
              final Measure13 = cocktail.Measure13;
              final Measure14 = cocktail.Measure14;
              final Measure15 = cocktail.Measure15;

              debugPrint(cocktailName.toString());
              return CocktailsItem(
                cocktailName: cocktailName,
                cocktailImageURL: cocktailImageURL,
                cocktailInstructions: cocktailInstructions,
                cocktailIng1: cocktailIng1,
                cocktailIng2: cocktailIng2,
                cocktailIng3: cocktailIng3,
                cocktailIng4: cocktailIng4,
                cocktailIng5: cocktailIng5,
                cocktailIng6: cocktailIng6,
                cocktailIng7: cocktailIng7,
                cocktailIng8: cocktailIng8,
                cocktailIng9: cocktailIng9,
                cocktailIng10: cocktailIng10,
                cocktailIng11: cocktailIng11,
                cocktailIng12: cocktailIng12,
                cocktailIng13: cocktailIng13,
                cocktailIng14: cocktailIng14,
                cocktailIng15: cocktailIng15,
                Measure1: Measure1,
                Measure2: Measure2,
                Measure3: Measure3,
                Measure4: Measure4,
                Measure5: Measure5,
                Measure6: Measure6,
                Measure7: Measure7,
                Measure8: Measure8,
                Measure9: Measure9,
                Measure10: Measure10,
                Measure11: Measure11,
                Measure12: Measure12,
                Measure13: Measure13,
                Measure14: Measure14,
                Measure15: Measure15,
              );
            },
          );
  }

  Widget _button() {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.download),
          onPressed: () async {
            _cocktailsItems = await CocktailsRepositoriry().getCocktails();
            debugPrint(_cocktailsItems!.length.toString());
            setState(() {});
          }),
    );
  }

  Future<void> _init() async {
    _cocktailsItems = await CocktailsRepositoriry().getCocktails();
    debugPrint(_cocktailsItems!.length.toString());
    setState(() {});
  }
}
