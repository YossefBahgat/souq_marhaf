import 'package:flutter/material.dart';

class Rating {
  final String id;
  final String userName;
  final String userImage;
  final int stars;
  final String comment;
  final DateTime date;

  Rating({
    required this.id,
    required this.userName,
    required this.userImage,
    required this.stars,
    required this.comment,
    required this.date,
  });
}

class RatingProvider extends ChangeNotifier {
  List<Rating> _ratings = [];
  double _averageRating = 0;

  List<Rating> get ratings => _ratings;
  double get averageRating => _averageRating;

  void addRating(String userName, String userImage, int stars, String comment) {
    _ratings.add(Rating(
      id: DateTime.now().toString(),
      userName: userName,
      userImage: userImage,
      stars: stars,
      comment: comment,
      date: DateTime.now(),
    ));
    _calculateAverage();
    notifyListeners();
  }

  void _calculateAverage() {
    if (_ratings.isEmpty) {
      _averageRating = 0;
      return;
    }
    _averageRating = _ratings
        .map((r) => r.stars)
        .reduce((a, b) => a + b) / _ratings.length;
  }
}