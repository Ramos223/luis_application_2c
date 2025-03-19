import 'package:flutter/material.dart';
import 'package:luis_application_2c/tabs/burger_tab.dart';
import 'package:luis_application_2c/tabs/donut_tab.dart';
import 'package:luis_application_2c/tabs/pancakes_tab.dart';
import 'package:luis_application_2c/tabs/pizza_tab.dart';
import 'package:luis_application_2c/tabs/smoothie_tab.dart';
import 'package:luis_application_2c/utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
 
  @override
  State<HomePage> createState() => _HomePageState();
}
 
class _HomePageState extends State<HomePage> {
  //Lista de Tabs
  List<Widget>  myTabs=[
    MyTab(iconPath: 'lib/icons/donut.png'),
    MyTab(iconPath: 'lib/icons/burger.png'),
    MyTab(iconPath: 'lib/icons/smoothie.png'),
    MyTab(iconPath: 'lib/icons/pancakes.png'),
    MyTab(iconPath: 'lib/icons/pizza.png'),
  ];
 
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          //icono izq
          leading: Icon(
            Icons.menu,
          color:Colors.grey[850],
          ),
        //icono derecho
          actions: const[
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            )
          ],
       
        ),
        body:Column(children:newMethod,)
      ),
    );
  }
 
  List<Widget> get newMethod {
    return [
        //Texto principal
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
          child: Row(
            children: [
              Text("I want to ", style: TextStyle(fontSize: 32)),
              Text("Eat", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, decoration: TextDecoration.underline))//Tamañ
            ],
          ),
        ),
   
        //TabBar (Barra de pestañas)
        TabBar(tabs: myTabs),
        //TabBarView (Contenido de las pestañas)
        Expanded(
          child: TabBarView(children: [
            DonutTab(),
            BurgerTab(),
            SmoothieTab(),
            PancakesTab(),
            PizzaTab()
          ]),
        ),
 
 
        //Carrito
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(16),
          child: Row(
            //Esto alinia los elementos a los extremos
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  //Alinear horizontalmente una colmna
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("2 Items | \$45",
                    style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.bold),),
                    Text('Delivery Charges included')
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12
                  )
                  
                ), 
              child:const Row(
                children:[
                Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                
                  Text(
                    'View cart', 
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                      ),
                ],
              ))
              ],
          ),

        )
      ];
  }
}
 