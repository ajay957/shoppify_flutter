import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoppify/widgets/action_button.dart';
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              const Gap(50),
              Center(
                child: Text("Signup",style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.black38
                ),),
                
              ),
              const Gap(30),
              Container(
                 height: 200,
                      width: 200,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Image.asset("assets/images/welcome.webp",fit: BoxFit.cover,)
              ),
          
              const Gap(30),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade700,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
              ),
              const Gap(30),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade700,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
              ),
          
              const Gap(30),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade700,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
              ),
              const Gap(30),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade700,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
              ),
              const Gap(15),

              const Gap(15),
              ActionButton(
                 buttonBgColor:  const Color.fromRGBO(65, 65, 65, 1),
                 buttonTextColor: Colors.white,
                 buttonText: "Signup", ontap: () { 
                 const SignUpPage();
                },
              ),
              const Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w300
                      ),
                      ),
                      const Gap(5),
                  Text("Login",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w700
                      ),
                      ),
          
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}