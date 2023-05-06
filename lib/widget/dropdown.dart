import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {

  List<String> _DropList =  [
"Ut enim ad minim veniam quis nistrud\nexercitation ullamco laboris nist ut aliquip ex ea\ncommodo consecquat."
];
String SelectOption ='Blue Membership Monthly Plan';
bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
           
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.redAccent,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(SelectOption).text.semiBold.color(Colors.white).make(),
                  InkWell(
                    onTap: () {
                       isOpen = !isOpen;
                      setState(() {
                       
                      });
                    },
                    child: Icon( isOpen?Icons.keyboard_arrow_up: Icons.keyboard_arrow_down,color: Colors.white,))
                ],
              ),
            )
          ),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.redAccent),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: "Lorem ipsum dolor sit amet, consectetur\nadipsiscing eilt, sed do eiusmod tempor insididunt".text.semiBold.color(Colors.white).make(),
            ),
          ),
          if(isOpen)
          ListView(
            primary: true,
            shrinkWrap: true,
            children: _DropList.map((e) => Container(
              decoration: BoxDecoration(color: Colors.redAccent),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){

                  },
                  child: Text(e).text.semiBold.color(Colors.white).make()),
              ),
            )).toList()
          ),
          Container(
            alignment: Alignment.bottomRight,
            height: 30,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.redAccent,borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: "RM 99.00".text.center.color(Colors.white).bold.make(),
              ),
            ),
          ),
          ],
        ),
      );
    
  }
}