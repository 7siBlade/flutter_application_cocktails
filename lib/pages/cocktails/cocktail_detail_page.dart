import 'package:flutter/material.dart';

class CocktailDetailPage extends StatelessWidget {
  final String cocktailName;
  final String cocktailImageURL;

  const CocktailDetailPage({
    Key? key,
    required this.cocktailName,
    required this.cocktailImageURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cocktailName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.network(
              cocktailImageURL,
              height: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              cocktailName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'API information',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
