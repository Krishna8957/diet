
import 'package:diet/widget/blue.dart';
import 'package:diet/widget/loyalty.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Reward extends StatelessWidget {
  const Reward ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  var _mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height:_mediaQuery.size.height*0.225,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 212, 210, 210)
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Loyalty(),));
                    }, icon: Icon(CupertinoIcons.back)),
                    SizedBox(height: 11,),
                   
                   Row(
                     children: [
                       VxBox(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: "Diet\nIdeas\nLogo".text.align(TextAlign.center).semiBold.make(),
                        )
                       ).size(95, 75).color(Colors.grey).make().p12(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50,left: 60),
                        child: "Reward\nPicture".text.make(),
                      )
        
                     ],
                   )
                  
                  ],
                ),
                ),
                SizedBox(height: 15,),
                "10% off Diet Plan".text.lg.bold.make(),
              SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          "Blue Membership".text.textStyle(context.captionStyle,).make(),
                          " Annual Plan".text.semiBold.lg.make()
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
                          "  1 feb 2023 to30\n  Apr 2023".text.semiBold.lg.make()
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
                      
                    },
                    child: VxBox(
                         child: Center(child: "PROCEED TO PAYMENT".text.bold.minFontSize(17).make())
                          ).
                          size(
                            _mediaQuery.size.width*0.7,
                             _mediaQuery.size.height*0.06,
                             ).color(Color.fromARGB(55, 162, 162, 162))
                         .roundedSM
                         .make(),
                  ),
            ],
          ).p12(),
        ),
      ),
    );
  }
}