import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shoppify/firebase_options.dart';
import 'package:shoppify/shopping_screen/splash_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  try{
    Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  } catch(e){
    log(e.toString());
  }
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
      
  }
}
