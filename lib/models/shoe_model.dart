import 'package:flutter/cupertino.dart';

class ShoeModel with ChangeNotifier {
  double _talla = 9.0;
  String _assetImage = 'assets/images/azul.png';

  double get talla => _talla;

  set talla(double value) {
    _talla = value;
    notifyListeners();
  }

  String get assetImage => _assetImage;

  set assetImage(String value) {
    _assetImage = value;
    notifyListeners();
  }
}
