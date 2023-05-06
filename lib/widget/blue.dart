import 'package:diet/widget/appbar.dart';
import 'package:diet/widget/service.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Blue extends StatelessWidget {
  const Blue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            Appbar(),
            SizedBox(height: 10,),
            Container(
              height: _mediaQuery.size.height*0.05,
              width: _mediaQuery.size.width*0.62,
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(15)
              ),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Container(
                    alignment: Alignment.center,
                   child: "Monthly Plan".text.semiBold.color(Colors.white).make(),
                   margin: EdgeInsets.only(left: 5),
                    height: _mediaQuery.size.height*0.035,
                    width: _mediaQuery.size.width*0.30,
                      decoration: BoxDecoration(
                    color: Color.fromARGB(255, 13, 35, 175),
                      borderRadius: BorderRadius.circular(10)
                      ),),
                     Container(
                    alignment: Alignment.center,
                   child: "Annual Plan".text.semiBold.color(Colors.black).make(),
                   margin: EdgeInsets.only(right: 8),
              
              )
                ],
              ),
            ),
          SizedBox(height: 10,),
           Container(
                 height: 150,
                 width:_mediaQuery.size.width*0.91,
                 decoration: BoxDecoration( 
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/daily.jpg'),
                    fit: BoxFit.cover,
                    ),
                    ),
                 ),
                 SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        "Blue Membership".text.textStyle(context.captionStyle,).make(),
                        " Monthly Plan".text.semiBold.lg.make()
                      ],
                    ).p16(),
                    Container(
                      height:50,
                      width: 2,
                      color: Colors.grey,
                      ).p16(),
                      Column(
                      children: [
                        "Blue Membership".text.textStyle(context.captionStyle,).make(),
                        "1 Month from\npurchase date".text.semiBold.lg.make()
                      ],
                    ).p16(),
                  ],
                  
                ) ,
                 Container(
                      height:2,
                      width: _mediaQuery.size.width*0.9,
                      color: Colors.grey,
                      ).p1(), 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: 
                  "Description".text.bold
                  .minFontSize(20.0).make()
                  ),
                  SizedBox(height: 10,),
                  "Lorem ipsum dolor sit amet,consectetur adipiscing\nelit, sed do eiusmod tempor incididunt. Lorem \nipsumdolor sit amet, consectetur adipiscing elit, sed\ndo eiusmod tempor incididunt".text.make(),
                 SizedBox(height: 10,),
                 "Terms and Conditions".text.semiBold.minFontSize(15).make(),
                  SizedBox(height: 10,),
                  "◾ Lorem ipsum dolor sit amet, consectetur\n    adipiscing elit, sed do eiusmod tempor \n    incididunt.".text.make(),
                  SizedBox(height: 10,),
                  "◾ Lorem ipsum dolor sit amet, consectetur\n    adipiscing elit, sed do eiusmod tempor \n    incididunt.".text.make(),
                  SizedBox(height: 10,),
                  "◾ Lorem ipsum dolor sit amet, consectetur\n    adipiscing elit, sed do eiusmod tempor \n    incididunt.".text.make(),
                  SizedBox(height: 10,),
                  Container(
                      height:1.5,
                      width: _mediaQuery.size.width*0.9,
                      color: Colors.grey,
                      ).p1(),

                   Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Icon(Icons.flag),
                    "Report Reward issue to Diet Ideas".text.semiBold.make(),
                    Icon(Icons.arrow_forward_ios,size: 13,)
                   ],) ,
                    Container(
                      height:1.5,
                      width: _mediaQuery.size.width*0.9,
                      color: Colors.grey,
                      ).p1(),
                     
              ], 
            ).p12(),
             SizedBox(height: 10,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => Service(), ));
                  },
                  child: VxBox(
                       child: Center(child: "Purchase ".text.bold.minFontSize(17).make())
                        ).
                        size(
                          _mediaQuery.size.width*0.7,
                           _mediaQuery.size.height*0.06,
                           ).color(Color.fromARGB(55, 162, 162, 162))
                       .roundedSM
                       .make(),
                ),
          ],
        ),
      )
    );

  }
}