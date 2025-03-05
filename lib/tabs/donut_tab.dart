import 'package:flutter/material.dart';
import 'package:luis_application_2c/utils/donut_tile.dart';

class DonutTab extends StatelessWidget {

//Lista de donas 
  final List donutsOnSale = [
   // [ donutFlavor, donutPrice, donutColor, imageName ]
   ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
   ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
   ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
   ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
];

   DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    //Widget para usar cuadricula
    return GridView.builder(
      //Cuantos elementos hay
      itemCount: donutsOnSale.length, 
      padding: EdgeInsets.all(12),
      // Prepa 1. como se organizaran los elementos
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Cuantas columnas 
        crossAxisCount: 2
        //Relacion de aspecto
        ,childAspectRatio: 1/1.5,
        
      ),
      itemBuilder: (context, index){
        //Cada elemento individual
        return DonutTile(
        donutFlavor: donutsOnSale[index][0],
        donutPrice: donutsOnSale[index][1],
        donutColor: donutsOnSale[index][2],
        imageName: donutsOnSale[index][3],
        );
      } 
    );
  }
}