import 'package:flutter/cupertino.dart';

class CustomTabController with ChangeNotifier {
  CustomTabController(this._icon, this._index);
  IconData _icon;
  int _index;

  IconData get icon => this._icon;

  set icon(IconData icon) {
    if (icon == this._icon) {
      return;
    }
    this._icon = icon;
    notifyListeners();
  }

  int get index => this._index;

  set index(int index) {
    if (index == this._index) {
      return;
    }
    this._index = index;
    notifyListeners();
  }
}
