///////////////////////////////////////////////////////////////
//    Instagram: @invisionchip
//    Github: chipinvision
//    LIKE   -   SHARE   -   FOLLOW
///////////////////////////////////////////////////////////////
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:rescreen/home.dart';
import 'package:rescreen/trending.dart';
import 'package:rescreen/collections.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int selectedpage = 0;

  final pages = [
    const HomePage(),
    const TrendingPage(),
    const CollectionsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xff2f3238),
      appBar: AppBar(
        title: const Text(
          "ReScreen",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff2f3238),
      ),
      body: pages[selectedpage],
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(Icons.home,size: 30,color: Colors.white),
          Icon(Icons.local_fire_department,size: 30,color: Colors.white),
          Icon(Icons.collections,size:30,color: Colors.white,),
        ],
        color: const Color(0xff2f3238),
        backgroundColor: Colors.greenAccent,
        onTap: (index){
            setState((){
              selectedpage = index;
            });
        },
      ) ,
    );
  }
}