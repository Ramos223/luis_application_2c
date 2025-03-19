import 'package:flutter/material.dart';
import 'package:luis_application_2c/utils/donut_tile.dart';

class SmoothieTab extends StatelessWidget {
  // Lista de donas
  final List donutsOnSale = [
    // [donutFlavor, donutStore, donutPrice, donutColor, imageName]
    ["Ice Cream","Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Dunkin Donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Costco", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Walmart", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Ice Cream","Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Dunkin Donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Costco", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Walmart", "95", Colors.brown, "lib/images/chocolate_donut.png"],
  ];
 
  SmoothieTab({super.key});
 
  @override
  Widget build(BuildContext context) {
    //Cuadrícula
    return GridView.builder(
      //Cuántos elementos hay en nuestra lista
        itemCount: donutsOnSale.length,
        padding: const EdgeInsets.all(8.0),
        //Organiza los elementos en una cuadricula
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // Número de columnas
          crossAxisCount: 2,
          //Relación de aspecto (proporción)
          childAspectRatio: 1/1.6),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutStore: donutsOnSale[index][1],
            donutPrice: donutsOnSale[index][2],
            donutColor: donutsOnSale[index][3],
            imageName: donutsOnSale[index][4],
           
          );
        },
      );
  }
}
 