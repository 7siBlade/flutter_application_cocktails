import 'package:flutter/material.dart';

import '../favorites/favorites_manager.dart';
import 'cocktail_detail_page.dart';

class CocktailsItem extends StatefulWidget {
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

  const CocktailsItem({
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
  }) : super(key: key);

  @override
  State<CocktailsItem> createState() => _CocktailsItemState();
}

class _CocktailsItemState extends State<CocktailsItem> {
  bool _isFavorite = false;

  @override
  void initState() {
    super.initState();
    _isFavorite = FavoritesManager.isFavorite(widget.cocktailName);
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        FavoritesManager.removeFromFavorites(widget.cocktailName);
      } else {
        FavoritesManager.addToFavorites(widget.cocktailName);
      }
      _isFavorite = !_isFavorite;
    });
  }
  void _navigateToDetailPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CocktailDetailPage(
          cocktailName: widget.cocktailName,
          cocktailImageURL: widget.cocktailImageURL,
          cocktailInstructions: widget.cocktailInstructions,
          cocktailIng1: widget.cocktailIng1,
          cocktailIng2: widget.cocktailIng2,
          cocktailIng3: widget.cocktailIng3,
          cocktailIng4: widget.cocktailIng4,
          cocktailIng5: widget.cocktailIng5,
          cocktailIng6: widget.cocktailIng6,
          cocktailIng7: widget.cocktailIng7,
          cocktailIng8: widget.cocktailIng8,
          cocktailIng9: widget.cocktailIng9,
          cocktailIng10: widget.cocktailIng10,
          cocktailIng11: widget.cocktailIng11,
          cocktailIng12: widget.cocktailIng12,
          cocktailIng13: widget.cocktailIng13,
          cocktailIng14: widget.cocktailIng14,
          cocktailIng15: widget.cocktailIng15,
          Measure1: widget.Measure1,
          Measure2: widget.Measure2,
          Measure3: widget.Measure3,
          Measure4: widget.Measure4,
          Measure5: widget.Measure5,
          Measure6: widget.Measure6,
          Measure7: widget.Measure7,
          Measure8: widget.Measure8,
          Measure9: widget.Measure9,
          Measure10: widget.Measure10,
          Measure11: widget.Measure11,
          Measure12: widget.Measure12,
          Measure13: widget.Measure13,
          Measure14: widget.Measure14,
          Measure15: widget.Measure15,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Card(
        color: const Color.fromARGB(255, 203, 204, 204),
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: _navigateToDetailPage,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 16),
            child: Row(
              children: <Widget>[
                // Image on the API ready
                Image.network(
                  widget.cocktailImageURL,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                _title(widget.cocktailName),
                _status(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _title(String cocktailName) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 15),
        // Text on the API ready
        child: Text(cocktailName),
      ),
    );
  }

  Widget _status() {
    return InkWell(
      onTap: _toggleFavorite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Status on the API
          Icon(_isFavorite ? Icons.favorite : Icons.favorite_border),
        ],
      ),
    );
  }
}
