import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoppify/shopping_screen/authentication/firebase_authentication.dart';
import 'package:shoppify/widgets/action_button.dart';
class SignUpPage extends StatefulWidget {
   SignUpPage({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final pwdController = TextEditingController();
  final conPwdController = TextEditingController();

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {


  final _formkey = GlobalKey<FormState>();
  FirebaseAuthentication firebaseAuthentication = FirebaseAuthentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
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
                TextFormField(
                  validator: (value){
                    if (value == null || value.isEmpty) {
                      return "* name required";
                    }
                    return null;
                  },
                  controller: widget.nameController,
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
               TextFormField(
                  validator: (value){
                    if (value == null || value.isEmpty) {
                      return "* email required";
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
                      return "* password required";
                    }
                    return null;
                  },
                  controller: widget.pwdController,
                  obscureText: true,
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
                TextFormField(
                  validator: (value){
                    if (value == null || value.isEmpty) {
                      return "* password required";
                    }
                    return null;
                  },
                  controller: widget.conPwdController,
                  obscureText: true,
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
                   buttonText: "Signup", 
                   ontap: () async{ 
                   if(_formkey.currentState!.validate()){
                    await firebaseAuthentication.signUp(
                      name: widget.nameController.text, 
                      email: widget.emailController.text, 
                      pwd: widget.pwdController.text, 
                      conPwd: widget.conPwdController.text, 
                      context: context
                      );
                      widget.nameController.clear();
                      widget.emailController.clear();
                      widget.pwdController.clear();
                      widget.conPwdController.clear();
                   }
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
      ),
    );
  }
}