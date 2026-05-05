// MODEL DE DADES AMB ENUM AVANÇAT
enum TipusBoto { beguda, opcio } // 2 dipus de botons.

enum CoffeeKey {
  // Els botons, en concret, Primer el label, sebons el tipus
  cafeCurt("Expresso", TipusBoto.beguda),
  cafeLlarg("Americano", TipusBoto.beguda),
  neteja("Neteja", TipusBoto.opcio);

  // Els atributs dels membres de l'enum.
  final String label;
  final TipusBoto tipus;

  // El constructor
  const CoffeeKey(this.label, this.tipus);

  // Funció auxiliar que em diu si és una beguda o no.
  bool get isBeguda => tipus == TipusBoto.beguda;
}
