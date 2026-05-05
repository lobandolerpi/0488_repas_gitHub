import 'package:flutter/material.dart';

// Classe d'estats del café
class GeneralAppState {
  final String missatgePantalla; // Missatge Pantalla
  final Color color1; // Molts colors per personalitzar
  final Color color2;
  final Color color3;
  final Color color4;
  final Color color5;
  final bool modeEco; // Booleà mode ECO

  const GeneralAppState({
    // No he fet cap required, però podria, perfectament.
    this.missatgePantalla = "Tria la teva beguda",
    this.color1 = const Color.fromARGB(255, 180, 180, 200),
    this.color2 = const Color.fromARGB(255, 50, 50, 255),
    this.color3 = const Color.fromARGB(255, 60, 60, 80),
    this.color4 = const Color.fromARGB(255, 200, 50, 50),
    this.color5 = const Color.fromARGB(255, 50, 255, 50),
    this.modeEco = false,
  });

  // Mètode copyWith per facilitar la immutabilitat
  GeneralAppState copyWith({
    String? missatgePantalla,
    Color? color1,
    Color? color2,
    Color? color3,
    Color? color4,
    Color? color5,
    bool? modeEco,
  }) {
    return GeneralAppState(
      missatgePantalla: missatgePantalla ?? this.missatgePantalla,
      color1: color1 ?? this.color1,
      color2: color2 ?? this.color2,
      color3: color3 ?? this.color3,
      color4: color4 ?? this.color4,
      color5: color5 ?? this.color5,
      modeEco: modeEco ?? this.modeEco,
    );
  }
}
