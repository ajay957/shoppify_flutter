import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoppify/shopping_screen/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void gotoWelcomePage(){
    Timer(const Duration(seconds: 3), () { 
      Navigator.push(context,
      MaterialPageRoute(builder: (_) =>const WelcomePage())
      );
    }
    );
  }

  @override
  void initState(){
    gotoWelcomePage();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(15)
            ),
            child: Image.asset("assets/images/splash2.png",
            fit: BoxFit.cover,),
          ),
        ],
      ),
    );
  }
}