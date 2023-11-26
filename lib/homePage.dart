import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BackdropFilter Widget"),  //kono kisoke Blur korte use hoi
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/Mostakim/mostakim.jpg"),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2,sigmaY: 2,
            ),
            child: Container(
              color: Colors.grey.withOpacity(0.2),
            ),)
          ],
           
        ),
      ),
      
    );
  }
}