import 'package:flutter/material.dart';
import '../model/general_app_state.dart'; // Per fitxers
import '../model/coffe_model.dart';

class MainViewModel extends ChangeNotifier {
  // 1. EL MODEL (Les dades de la app).
  GeneralAppState _estatGeneralApp;
  GeneralAppState get estatGeneralApp => _estatGeneralApp;

  // Per estàndards de desacoblament model-viewmodel
  // és millor que el constructor rebi les classes d'estats, no que les crei.
  // creem les instancies d'estat al main.
  MainViewModel(this._estatGeneralApp); //{}

  // FUNCIONS DE LA LÒGICA.
  void clickCurtModeEco() {
    final Color color5Tmp = _estatGeneralApp.color5;
    _estatGeneralApp = _estatGeneralApp.copyWith(
      modeEco: !_estatGeneralApp.modeEco,
      color5: _estatGeneralApp.color4,
      color4: color5Tmp,
    );
    notifyListeners();
  }

  void clickLlargModeEco() {
    // No fa res
  }

  void clickCurtNeteja() {
    String txt = "Neteja Curta ...";
    if (_estatGeneralApp.modeEco) {
      txt = txt + "\nNo netegis més per saltarta la norma";
    }
    _estatGeneralApp = _estatGeneralApp.copyWith(missatgePantalla: txt);
    notifyListeners();
  }

  void clickLlargNeteja() {
    String txt = (_estatGeneralApp.modeEco)
        ? "No malgastis aigua!!!"
        : "Neteja llarga...";
    _estatGeneralApp = _estatGeneralApp.copyWith(missatgePantalla: txt);
    notifyListeners();
  }

  void clickCurtExpresso() {
    _estatGeneralApp = _estatGeneralApp.copyWith(
      missatgePantalla: "Preparant Expresso.",
    );
    notifyListeners();
  }

  void clickLlargExpresso() {
    _estatGeneralApp = _estatGeneralApp.copyWith(
      missatgePantalla: "Doble dosi d'Expresso.",
    );
    notifyListeners();
  }

  void clickCurtAmericano() {
    _estatGeneralApp = _estatGeneralApp.copyWith(
      missatgePantalla: "Preparant Americano.",
    );
    notifyListeners();
  }

  void clickLlargAmericano() {
    _estatGeneralApp = _estatGeneralApp.copyWith(
      missatgePantalla: "Doble dosi d'Americano.",
    );
    notifyListeners();
  }
}
