import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/main_viewmodel.dart';
import '../view/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final String nomAlumne = "AlumneRandom";

  @override
  Widget build(BuildContext context) {
    // TODO Escoltem el ViewModel

    return Scaffold(
      appBar: AppBar(title: Text("Examen 0488 - $nomAlumne")),
      body: Row(
        children: [
          SafeArea(child: SideMenu()),
          SizedBox(width: 10),
          Expanded(
            // TODO Fer la zona de la pantalla i la zona de les tecles.
            child: Text(
              "Aqui van els teus Widgets\nCanvia AlumneRandom de la Barra de títol\n    de la finestra per favor",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    ); // Scaffold
  } // End override build
} // End main Screen
