import 'package:flutter/material.dart';

import 'cocktail_detail_page.dart';

class CocktailsItem extends StatefulWidget {
  final String cocktailName;
  final String cocktailImageURL;

  const CocktailsItem({
    Key? key,
    required this.cocktailName,
    required this.cocktailImageURL,
  }) : super(key: key);

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

  void _navigateToDetailPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CocktailDetailPage(
          cocktailName: widget.cocktailName,
          cocktailImageURL: widget.cocktailImageURL,
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
      onTap: _toggleIcon,
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
