import 'package:diet/widget/blue.dart';
import 'package:diet/widget/dropdown.dart';
import 'package:diet/widget/loyalty.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class Service extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
        var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Blue(),));
                        }, 
                        icon: Icon(Icons.arrow_back_ios,size: 17,),)
                    ),
                  
                    "Service Programme".text.bold.xl.make(),
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
                child: Column(
                  children: [
                    Container(
                    margin: EdgeInsets.only(top: 10),
                      child:
                     "Dec 20,2022".text.xl.semiBold.color(Colors.white).make(),
                     ),
                      Container(
                    margin: EdgeInsets.only(top: 10),
                      child:
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         "Cut _off date ".text.color(Colors.grey).textStyle(context.captionStyle).make(),
                         "Dec 31,2022".text.semiBold.color(Colors.white).make()
                       ],
                     ),
                     )
                  ],
                ),
                height: _mediaQuery.size.height*0.12,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 6, 11, 121)
                ),
              ),
              SizedBox(height: 15,),
              Container(alignment: Alignment.topLeft,
                child: "Select the type of Service Programme of your \nchoice".text.bold.make()),
           
            SizedBox(height: 15,),
             Dropdown(),
              SizedBox(height: 15,),
             Container(
              height: _mediaQuery.size.height*0.19,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(212, 212, 212, 212)
              ),
              child: 
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: "Blue Membership Monthly Plan".text.bold.make()),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Icon(Icons.keyboard_arrow_down,),
                        )
                    ],
                  ),
                   
                   Container(
                    child: "Lorem ipsum dolor sit amet, consectetur\nadipsiscing eilt, sed do eiusmod tempor insididunt".text.make()),
                     Padding(
                  padding: const EdgeInsets.only(bottom: 5,right: 10),
                  child: Container(alignment: Alignment.bottomRight,
                    child: "RM 1188.00".text.center.color(Colors.black).bold.make(),
                    ),
                ),
                ],
              ),
             ),
             SizedBox(height: 15,),
             Container(
              height: _mediaQuery.size.height*0.19,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(212, 212, 212, 212)
              ),
              child: 
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: "Service Programme 1".text.bold.make()),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Icon(Icons.keyboard_arrow_down,),
                        )
                    ],
                  ),
                   
                   Container(
                    child: "Lorem ipsum dolor sit amet, consectetur\nadipsiscing eilt, sed do eiusmod tempor insididunt".text.make()),
                     Padding(
                  padding: const EdgeInsets.only(bottom: 5,right: 10),
                  child: Container(alignment: Alignment.bottomRight,
                    child: "RM 1400.00".text.center.color(Colors.black).bold.make(),
                    ),
                ),
                ],
              ),
             ),
             SizedBox(height: 15,),
             Container(
              width: _mediaQuery.size.width*0.8,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 21, 201, 90)
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Loyalty(),));
                },
                child: Container(
                  alignment: Alignment.center,
                  child: "Continue with Payments".text.semiBold.size(18).color(Colors.white).make()),
              ),
             )
            ],
          ).p16(),
        ),
      ),
    );
  }
}