import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Daily extends StatelessWidget {
  const Daily({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Container(
               height: 150,
               width:_mediaQuery.size.width*0.85,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                 image: DecorationImage(image: 
                 AssetImage('assets/daily.jpg'),
                 fit: BoxFit.cover,
                 ),
                 ),
               ),
             SizedBox(width: 5,),
             Column(
               children: [
                 VxBox().size(10, 10).color(Colors.grey).rounded.make(),
                 SizedBox(height: 5,),
                 VxBox().size(10, 10).color(Color.fromARGB(255, 6, 40, 69)).rounded.make(),
                  SizedBox(height: 5,),
                 VxBox().size(10, 10).color(Colors.grey).rounded.make(),
               ],
             )
           ],
         ).p16();
  }
}
