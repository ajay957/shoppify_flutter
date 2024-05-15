// ignore_for_file: use_build_context_synchronously, avoid_print, unused_local_variable

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shoppify/shopping_screen/home_page.dart';
import 'package:shoppify/shopping_screen/sign_in.dart';

class FirebaseAuthentication{
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<void> signUp({
    required String name,
    required String email,
    required String pwd,
    required String conPwd,
    required BuildContext context
  })async {
    name.trim();
    email.trim();
    pwd.trim();
    conPwd.trim();

    if (name != "" && email != "" && pwd != "" && conPwd != "") {
      try {
        UserCredential userCredential = await firebaseAuth.
        createUserWithEmailAndPassword(
          email: email, password: pwd
          );
          log("user created");

          Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_)=> SignInPage()
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


  Future<void> signIn({
    required String email,
    required String pwd,
    required  BuildContext context
  })async {
    email.trim();
    pwd.trim();

    if(email != "" && pwd != ""){
      try{
        await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: pwd
          );

          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_)=> const HomePage())
          );
      } on FirebaseAuthException catch(e){
        if (e.code == 'user-not-found') {
          log(e.code);
        } else if(e.code == 'wrong-password'){
          final snackBar = SnackBar(
            backgroundColor: Colors.teal,
            behavior: SnackBarBehavior.floating,
            content: Center(
              child: Text(e.message.toString()
              ),
            )
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      }
    } else {
      print("error...");
    }
  }
}