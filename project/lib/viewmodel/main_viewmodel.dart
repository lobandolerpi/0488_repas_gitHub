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

  // FUNCIONS AUXILIARS.

  // FUNCIONS DE LA LÒGICA.
}
