import 'dart:ffi';

import 'package:examen_0488_alumn/view/botonCuston.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/main_viewmodel.dart';
import '../view/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final String nomAlumne = "AlumneRandom";

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<MainViewModel>();

    return Scaffold(
      appBar: AppBar(title: Text("Examen 0488 - $nomAlumne")),
      body: Row(
        children: [
          SafeArea(child: SideMenu()),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      vm.estatGeneralApp.missatgePantalla,
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Row(
                      children: [
                        BotoCustom(
                          text: "modeEco",
                          alFerClic: () {
                            vm.clickCurtModeEco();
                          },
                          alFerClicLlarg:
                              (
                                // Que està rebent la funció Realment
                              ) {
                                vm.clickCurtModeEco(
                                  // Que li vull passar al viewmodel.
                                ); // Si torna void, aquí s'acaba.
                              },
                          colorFons: vm.estatGeneralApp.color4,
                          colorText: vm.estatGeneralApp.color5,
                        ),
                        BotoCustom(
                          text: "Neteja",
                          alFerClic: () {
                            vm.clickCurtNeteja();
                          },
                          alFerClicLlarg: () {
                            vm.clickLlargNeteja();
                          },
                          colorFons: Colors.blue,
                          colorText: Colors.white,
                        ),
                        BotoCustom(
                          text: "Expresso",
                          alFerClic: () {
                            vm.clickCurtExpresso();
                          },
                          alFerClicLlarg: () {
                            vm.clickLlargExpresso();
                          },
                        ),
                        BotoCustom(
                          text: "Americano",
                          alFerClic: () {
                            vm.clickCurtAmericano();
                          },
                          alFerClicLlarg: () {
                            vm.clickLlargAmericano();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ); // Scaffold
  } // End override build
} // End main Screen
