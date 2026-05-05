import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/main_viewmodel.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  // Lògica d'estat local (molt cutre perquè ignora el ViewModel)
  bool canviColorsCutre = false;
  final colors = [
    const Color.fromARGB(255, 250, 100, 100),
    const Color.fromARGB(255, 50, 0, 0),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      child: Container(
        color: canviColorsCutre ? colors[0] : colors[1],
        child: Column(
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: canviColorsCutre ? colors[1] : colors[0],
              ),
              onPressed: () {
                //context.read<MainViewModel>().invertirColorsTeclat();
              },
              child: Text("Canviar Colors Teclat"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: canviColorsCutre ? colors[1] : colors[0],
              ),
              onPressed: () {
                // Fem el canvi d'estat localment
                setState(() {
                  canviColorsCutre = !canviColorsCutre;
                });
              },
              child: Text(
                "Canviar Colors Menú Lateral",
                style: TextStyle(
                  // Colors que canvien segons l'estat local
                  color: canviColorsCutre ? colors[0] : colors[1],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
