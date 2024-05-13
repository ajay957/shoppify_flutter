import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoppify/shopping_screen/sign_in.dart';
import 'package:shoppify/widgets/action_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [
              Colors.black,
              Colors.white,
              Colors.white,
              Colors.white30,
            ])
          ),
          
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            child: Column(
              children: [
                const SizedBox(height: 100,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   
                    Text("Laventa",style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.black38,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
                const Gap(15),
                Container(
                  height: 380,
                  width: 400,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Image.asset("assets/images/welcome.webp",fit: BoxFit.cover,)),
                  const Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Where",style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontWeight: FontWeight.bold
                      ),),
                      const Gap(12),
                      Text("fashion",style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.pinkAccent
                      ),),

                      
                    ],

                  ),
                  Row(
                    children: [
                      Text("comes to life",style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                            fontWeight: FontWeight.bold
                          ),),
                    ],
                    
                  ),
                  const Gap(60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ActionButton(
                        buttonBgColor:  const Color.fromRGBO(65, 65, 65, 1),
                        buttonTextColor: Colors.white,
                        buttonText: "Sign in", ontap: () { 
                           SignInPage();
                        },
                      ),
                    const Gap(15),
                    ActionButton(
                    buttonBgColor:  const Color.fromRGBO(65, 65, 65, 1),
                    buttonTextColor: Colors.white,
                    buttonText: "Sign up", ontap: () { 

                    },
                  ),
                    ],
                  ),
                ),

                
              ],
              
            ),
          ),
        ), 
      ),
    );
  }
}