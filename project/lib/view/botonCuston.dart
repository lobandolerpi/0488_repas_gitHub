// Dins de view/boto_cafe_widget.dart
import 'package:flutter/material.dart';

class BotoCustom extends StatelessWidget {
  final String text;
  final Function() alFerClic;
  final Function() alFerClicLlarg;
  final Color colorFons;
  final Color colorText;

  const BotoCustom({
    super.key,
    required this.text,
    required this.alFerClic,
    this.alFerClicLlarg = _funcioPerDefecteQueNoFaRes,
    this.colorFons = Colors.brown,
    this.colorText = Colors.yellow,
  });

  // Una funció estàtica que no fa res per reutilitzar-la
  // Ha de ser estàtica perque BotoCustom es const.
  // I ha de ser const per ajudar a flutter a saber
  // si ha canviat d'adreça de memòria.
  static void _funcioPerDefecteQueNoFaRes() {}

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorFons,
        fixedSize: const Size(100, 100),
      ),
      onPressed: () {
        // La lambda és només necessària si
        // necessito diferents paràmetres.
        alFerClic();
      },
      onLongPress: () {
        // La lambda és només necessària si
        // necessito diferents paràmetres.
        alFerClicLlarg();
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20, //
          color: colorText,
        ),
      ),
    );
  }
}
