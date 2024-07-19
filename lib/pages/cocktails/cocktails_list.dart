import 'package:flutter/material.dart';
import 'package:flutter_application_cocktails/pages/cocktails/cocktails_item.dart';

class CocktailsPage extends StatelessWidget {
  const CocktailsPage({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(children: <Widget>[
      _list()
      ]);
  }

  Widget _list() {
    return ListView.separated(
      itemCount: 15,
      padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 10);
      },
      itemBuilder: (BuildContext context, int index) {
        return const CocktailsItem();
      },
     );
  }
}
