import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoppify/shopping_screen/authentication/firebase_authentication.dart';
import 'package:shoppify/widgets/action_button.dart';
class SignInPage extends StatefulWidget {
   SignInPage({super.key});

  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  FirebaseAuthentication firebaseAuthentication = FirebaseAuthentication();
  
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Form(
          key: _formkey,
          child: Column( 
            children: [
              const Gap(70),
              Center(
                child: Text("Login",style: Theme.of(context).textTheme.headlineLarge!.copyWith(
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
              TextFormField(
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "* Email Required";
                  }
                  return null;
                },
                controller: widget.emailController,
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
              TextFormField(
                validator: (value){
                  if (value == null || value.isEmpty) {
                    return "* Password Required";
                  }
                  return null;
                },
                controller: widget.pwdController,
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
              const Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot Password?",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w500
                  ),
                  ),
                ],
              ),
              const Gap(15),
              ActionButton(
                 buttonBgColor:  const Color.fromRGBO(65, 65, 65, 1),
                 buttonTextColor: Colors.white,
                 buttonText: "Sign in", ontap: () async { 
                  if(_formkey.currentState!.validate()
                  ){
                    String email = widget.emailController.text;
                    String pwd = widget.pwdController.text;

                    await firebaseAuthentication.signIn(
                      email: email,
                      password: pwd, 
                      context: context
                      );
                  }
                },
              ),
              const Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New User?",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w300
                      ),
                      ),
                      const Gap(5),
                  Text("Signup",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
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