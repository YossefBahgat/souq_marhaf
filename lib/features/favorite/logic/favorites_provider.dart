
import 'package:flutter/material.dart';

import '../../home_chats/ui/screens/chats_screen.dart';

class FavoritesProvider extends ChangeNotifier {
  final List<FavoriteItem> _favorites = [];

  List<FavoriteItem> get favorites => _favorites;

  void toggleFavorite(FavoriteItem item) {
    if (_favorites.contains(item)) {
      _favorites.remove(item);
    } else {
      _favorites.add(item);
    }
    notifyListeners();
  }

  bool isFavorite(FavoriteItem item) => _favorites.contains(item);
}
