import 'package:diet/widget/blue.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Images extends StatelessWidget {
  const Images({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return SingleChildScrollView(
      child: Column(
      children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    height: _mediaQuery.size.height*0.08,
                    width: 55,
                    child: 
                    Image.asset('assets/program.png',fit: BoxFit.cover,)),
                    "My Diet\nProgram".text.color(Colors.white).semiBold.make()
                ],
              ),
            ),
            height: _mediaQuery.size.height*0.18,
            width:_mediaQuery.size.width*0.30 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 11, 5, 120)
            ),
          ),
           Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Container(
                    height: 50,width: 50,
                    child: 
                    Image.asset('assets/ideas.png',fit: BoxFit.cover,)),
                    "Discover Diet\n       Ideas".text.color(Colors.white).semiBold.make()
                ],
              ),
            ),
           height: _mediaQuery.size.height*0.18,
            width:_mediaQuery.size.width*0.30 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 8, 215, 146)
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    height: 50,width: 50,
                    child: 
                    Image.asset('assets/feedback.png',fit: BoxFit.cover,)),
                    "Feedback".text.color(Colors.white).semiBold.make()
                ],
              ),
            ),
            height: _mediaQuery.size.height*0.18,
            width:_mediaQuery.size.width*0.30 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 247, 103, 103)
            ),
          ),
        ],
      ),
      SizedBox(height: 15,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    height: 55,width: 55,
                    child: 
                    Image.asset('assets/records.png',fit: BoxFit.cover,)),
                    "My health\n  Records".text.color(Colors.white).semiBold.make()
                ],
              ),
            ),
           height: _mediaQuery.size.height*0.18,
            width:_mediaQuery.size.width*0.30 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 237, 219, 18)
            ),
          ),
           Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Container(
                   height:55,
                  width:55 ,
                    child: 
                    Image.asset('assets/more.png',fit: BoxFit.cover,)),
                    "learn more".text.color(Colors.white).semiBold.make()
                ],
              ),
            ),
           height: _mediaQuery.size.height*0.18,
            width:_mediaQuery.size.width*0.30 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 11, 7, 117)
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Blue(),));
            },
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Container(
                      height: 50,width: 50,
                      child: 
                      Image.asset('assets/blue.png',fit: BoxFit.cover,)),
                      "       Blue\nMembership".text.color(Colors.white).semiBold.make()
                  ],
                ),
              ),
              height: _mediaQuery.size.height*0.18,
              width:_mediaQuery.size.width*0.30 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                 color: Color.fromARGB(255, 8, 215, 146)
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    height: 55,width: 55,
                    child: 
                    Image.asset('assets/tourism.png',fit: BoxFit.cover,)),
                    "Nutrition\n  Tourism".text.color(Colors.white).semiBold.make()
                ],
              ),
            ),
           height: _mediaQuery.size.height*0.18,
            width:_mediaQuery.size.width*0.30 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
               color: Color.fromARGB(255, 11, 7, 117)
            ),
          ),
           Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Container(
                    height: 50,width: 50,
                    child: 
                    Image.asset('assets/shop.png',fit: BoxFit.cover,)),
                    "learn more".text.color(Colors.white).semiBold.make()
                ],
              ),
            ),
            height: _mediaQuery.size.height*0.18,
            width:_mediaQuery.size.width*0.30 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 8, 215, 146)
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    height: 50,width: 50,
                    child: 
                    Image.asset('assets/around.png',fit: BoxFit.cover,)),
                    "Healthy Foods\n   Around me".text.color(Colors.white).semiBold.make()
                ],
              ),
            ),
           height: _mediaQuery.size.height*0.18,
            width:_mediaQuery.size.width*0.30 ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 247, 103, 103)
            ),
          ),
        ],
      )
      ],),
    );
  }
}