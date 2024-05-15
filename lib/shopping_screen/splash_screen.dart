import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoppify/shopping_screen/home_page.dart';
import 'package:shoppify/shopping_screen/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void gotoWelcomePage(){
    Timer(const Duration(seconds: 3), () { 
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (_) => checkUserLoggedinOrNot())
      );
    }
    );
  }

  Widget checkUserLoggedinOrNot(){
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(), 
      builder: (BuildContext context, AsyncSnapshot<User?> user){
        if(user.connectionState == ConnectionState.waiting){
          return const CircularProgressIndicator();
        }else if(user.hasData){
          return const HomePage();
        } else {
           return const WelcomePage();
        }
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