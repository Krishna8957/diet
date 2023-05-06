import 'package:diet/widget/appbar.dart';
import 'package:diet/widget/daily.dart';

import 'package:diet/widget/reward.dart';
import 'package:diet/widget/service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Loyalty extends StatefulWidget {
  const Loyalty({Key? key}) : super(key: key);

  @override
  State<Loyalty> createState() => _LoyaltyState();
}

class _LoyaltyState extends State<Loyalty> {

  List items =[
  {
  "name": "20% off Ready to Eat Deals",
  "decs": "Lorem   ipsum   dolor  sit  amet, consectetur adipsiscing eilt, sed do eiusmod  tempor insididunt",
  "image" :"assets/images.jpg",
  },
    {
  "name": "10% off Full Blood & Body Test",
  "decs": "Lorem   ipsum   dolor  sit  amet, consectetur adipsiscing eilt, sed do eiusmod  tempor insididunt",
  "image" :"assets/images.jpg",
  },
    {
  "name": "10% Blue Members Advantage",
  "decs": "Lorem   ipsum   dolor  sit  amet, consectetur adipsiscing eilt, sed do eiusmod  tempor insididunt",
  "image" :"assets/images.jpg",
  },
    {
  "name": "20% off Service Plan 1",
  "decs": "Lorem   ipsum   dolor  sit  amet, consectetur adipsiscing eilt, sed do eiusmod  tempor insididunt",
  "image" :"assets/images.jpg",
  },
];
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    
    return SafeArea(
      child: Scaffold(
        body:  
           Column(
            children: [
              Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: IconButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Service(),));
                                },
                                icon: Icon(Icons.arrow_back_ios,size: 17,),
                                )
                            ),
                          
                            "Loyalty Program".text.bold.xl.make(),
                              SizedBox(width: 30,),
                          ],
                        ),
                        height: 45,
                        width:double.infinity ,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.5,color: Colors.grey)
                        ),
                      ),
                      SizedBox(height: 15,),
              Container(
                height: _mediaQuery.size.height*.27,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(176, 164, 163, 161),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                      child: "BLUE MEMBERSHIP".text.semiBold.make(),
        
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,),
                      child: "ANNUAL MEMBERSHIP".text.bold.xl2.make(),
                      
                    ),
                     SizedBox(height: _mediaQuery.size.height*0.014,),
                       Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: "Lorem   ipsum   dolor  sit  amet,   consectetur\nadipsiscing eilt, sed  do  eiusmod  tempor insididunt ut labore et dolore magna aliqua.".text.semiBold.make(),
                    ),
                    SizedBox(height: _mediaQuery.size.height*0.055,),
                    Align(
                      alignment: Alignment.bottomRight,
                      child:
                       Container(
                        alignment: Alignment.center,
                        height: _mediaQuery.size.height*0.05,
                        width:_mediaQuery.size.width*0.15,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow( blurRadius: 2)
                          ],
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(12)),
                          color: Color.fromARGB(255, 160, 156, 156)
                        ),
                        child: "Details".text.semiBold.make(),
                        ),
                    ),
                    
                  ],
                ),
              ) ,
              SizedBox(height: 15,),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  alignment: Alignment.topLeft,
                  child: "Deals".text.xl.bold.make()
                  ),
              ) ,
             SizedBox(height: 15,),
          Expanded(
            child: 
            Container(
            
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                   color: Color.fromARGB(176, 164, 163, 161),
                  child: ListTile(
                  title: Text(items[index]["name"]),
                  subtitle: Text(items[index]["decs"]),
                  leading:InkWell (
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Reward(),));
                    },
                    child: Image.asset(items[index]["image"],fit: BoxFit.cover,)),

                  ),
                );
              },),
            )
            )
            ],
          ).p16(),
        
      
        
      
      ),
    );
  }
}