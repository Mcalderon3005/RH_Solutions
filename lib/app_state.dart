import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _userDiet = '';
  String get userDiet => _userDiet;
  set userDiet(String value) {
    _userDiet = value;
  }

  List<String> _userAllergens = [];
  List<String> get userAllergens => _userAllergens;
  set userAllergens(List<String> value) {
    _userAllergens = value;
  }

  void addToUserAllergens(String value) {
    userAllergens.add(value);
  }

  void removeFromUserAllergens(String value) {
    userAllergens.remove(value);
  }

  void removeAtIndexFromUserAllergens(int index) {
    userAllergens.removeAt(index);
  }

  void updateUserAllergensAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    userAllergens[index] = updateFn(_userAllergens[index]);
  }

  void insertAtIndexInUserAllergens(int index, String value) {
    userAllergens.insert(index, value);
  }

  List<String> _userIngredientDislikes = [];
  List<String> get userIngredientDislikes => _userIngredientDislikes;
  set userIngredientDislikes(List<String> value) {
    _userIngredientDislikes = value;
  }

  void addToUserIngredientDislikes(String value) {
    userIngredientDislikes.add(value);
  }

  void removeFromUserIngredientDislikes(String value) {
    userIngredientDislikes.remove(value);
  }

  void removeAtIndexFromUserIngredientDislikes(int index) {
    userIngredientDislikes.removeAt(index);
  }

  void updateUserIngredientDislikesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    userIngredientDislikes[index] = updateFn(_userIngredientDislikes[index]);
  }

  void insertAtIndexInUserIngredientDislikes(int index, String value) {
    userIngredientDislikes.insert(index, value);
  }
}
