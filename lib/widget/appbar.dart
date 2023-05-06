
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: VxBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          VxBox( child: Image.asset("assets/woman.jpg",fit: BoxFit.cover,)).size(40, 40).roundedSM.make().p12(),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                "Hello, Master!".text.semiBold.xl.make(),
                "Today Wed, Dec 28".text.semiBold.color(Color.fromARGB(255, 6, 79, 138)).make(),
              ],
            ),
          ),
          VxBox( child: Icon(Icons.notifications_outlined)).size(30, 30).color(Colors.white).roundedSM.make().p12()
        ]
      )
      ).size(context.screenWidth, 80).color(Color.fromARGB(255, 200, 223, 229)).make(),
    );
    
   
  }
}