// ignore_for_file: use_build_context_synchronously, avoid_print, unused_local_variable

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shoppify/shopping_screen/home_page.dart';

class FirebaseAuthentication{
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<void> signIn({
    required String email,
    required String password,
    required BuildContext context
  })async {
    email.trim();
    password.trim();

    if (email != "" && password != "") {
      try {
        UserCredential userCredential = await firebaseAuth.
        createUserWithEmailAndPassword(
          email: email, password: password
          );
          log("user created");

          Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (_)=>const HomePage()
          )
          );
      } on FirebaseAuthException catch(e){
        if (e.code == 'weak-password') {
          final snackBar = SnackBar(
            backgroundColor: Colors.teal,
            behavior: SnackBarBehavior.floating,
            content: Center(
              child: Text(e.message.toString()),
            )
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
        } else if(
          e.code == 'email-already-in-use'
        ) {
          const snackBar = SnackBar(
            backgroundColor: Colors.teal,
            behavior: SnackBarBehavior.floating,
            content: Center(
              child: Text("email already in use"),
            )
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      }
    }else {
      print("error...");
    }
  }
}