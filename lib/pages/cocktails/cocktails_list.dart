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
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(children: <Widget>[
      _button(),
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
              debugPrint(cocktailName.toString());
              return CocktailsItem(
                  cocktailName: cocktailName,
                  cocktailImageURL: cocktailImageURL);
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
}
