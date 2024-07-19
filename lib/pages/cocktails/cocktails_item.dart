import 'package:flutter/material.dart';

class CocktailsItem extends StatefulWidget {
  const CocktailsItem({super.key});

  @override
  State<CocktailsItem> createState() => _CocktailsItemState();
}

class _CocktailsItemState extends State<CocktailsItem> {
bool _isFavorite = false;

void _toggleIcon() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 64,
      child: Card(
        color: const Color.fromARGB(255, 203, 204, 204),
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 16),
              child: Row(
                children: <Widget>[
                  //Image on the API
                  Icon(Icons.),
                  _title(),
                  _status(),
                ],
              ),
            )),
      ),
    );
  }

  Widget _title() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 15),
        //Text on the API
        child: Text("Napitoc"),
      ),
    );
  }

  Widget _status() {
    return InkWell(
      onTap: _toggleIcon,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Status on the API
          Icon(_isFavorite ? Icons.favorite : Icons.favorite_border),
        ],
      ),
    );
  }
}
