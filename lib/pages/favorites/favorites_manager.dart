class FavoritesManager {
  static final List<String> _favorites = [];

  static List<String> get favorites => _favorites;

  static void addToFavorites(String cocktailName) {
    if (!_favorites.contains(cocktailName)) {
      _favorites.add(cocktailName);
    }
  }

  static void removeFromFavorites(String cocktailName) {
    _favorites.remove(cocktailName);
  }

  static bool isFavorite(String cocktailName) {
    return _favorites.contains(cocktailName);
  }
}
