import 'package:diet/widget/appbar.dart';
import 'package:diet/widget/blue.dart';
import 'package:diet/widget/daily.dart';
import 'package:diet/widget/dropdown.dart';
import 'package:diet/widget/images.dart';
import 'package:diet/widget/service.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/dropdwon',
      routes: {
         "dropdown":(context) => Dropdown(),
        'blue':(context) => Blue(),
        'service':(context) => Service(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    
   
    return Scaffold(
      body: Column(
        children: [
         Appbar(),
         Daily(),
         SizedBox(height: 10,),
         SingleChildScrollView(child: Images()),
        ],
      ),
    );
    
  }
}
