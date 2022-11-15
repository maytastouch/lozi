import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  List<Map<String, dynamic>> _favoriteHymns = [];
  List<Map<String, dynamic>> get favoriteHymns => _favoriteHymns;

  void toggleFavorite(dynamic hymn) {
    final isExist = _favoriteHymns.contains(hymn);
    if (isExist) {
      _favoriteHymns.remove(hymn);
    } else {
      _favoriteHymns.add(hymn);
    }
  }

  void notifyListeners();

  void clearfavorites() {
    _favoriteHymns = [];
    notifyListeners();
  }
}
