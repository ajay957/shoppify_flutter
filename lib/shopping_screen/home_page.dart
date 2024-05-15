// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:shoppify/shopping_screen/welcome_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  signOut() async {
    await firebaseAuth.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const WelcomePage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 220,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(223,223,223, 1),
                      
                    ),
                   
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                         children: [
                          Icon(Icons.search),
        
                          SizedBox(width: 10,),
        
                          Text("Search",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16
                          ),)
        
                         ],
                      ),
                    ),                  
                  ),
                  const SizedBox(width: 15,),
                  Container(
                    height: 50,
                    width: 50,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(223,223,223, 1),
                      
                    ),
        
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.notifications,
                      size: 25,
                      ),
                    ),                  
                  ),
        
                   const SizedBox(width: 15,),
                  Container(
                    height: 50,
                    width: 50,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(223,223,223, 1),
                      
                    ),
        
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.shopping_cart_rounded,
                      size: 25,
                      ),
                    ),                  
                  ),
        
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                height: 190,
                width: double.infinity,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  
                ),
                child: Image.network("https://images.unsplash.com/photo-1573855619003-97b4799dcd8b?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                ,fit: BoxFit.cover,
                )
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color:  Color.fromRGBO(223,223,223, 1),
                      
                    ),
        
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image(
                        image: AssetImage("assets/images/nike.png"),
                        
                        )
                    ),
                  ),
                  const SizedBox(width: 12,),
                   Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color:  Color.fromRGBO(223,223,223, 1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image(
                        image: AssetImage("assets/images/adidas.png"),
                        )
                    ),
                  ),
                  const SizedBox(width: 12,),
                   Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color:  Color.fromRGBO(223,223,223, 1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image(
                        image: ExactAssetImage("assets/images/puma.png"),
                        )
                    ),
                  ),
                  const SizedBox(width: 12,),
                   Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color:  Color.fromRGBO(223,223,223, 1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image(
                        image: AssetImage("assets/images/nb.jpg"),
                        )
                    ),
                  ),
                  const SizedBox(width: 12,),
                   Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color:  Color.fromRGBO(223,223,223, 1),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image(
                        image: AssetImage("assets/images/converse.png"),
                        )
                    ),
                  ),
                ],
              ),
        
              const SizedBox(height: 10),
              const Row(
                children: [
                  SizedBox(width: 2,),
                  Text("Nike",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(width: 35,),
                  Text("Adidas",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(width: 29,),
                  Text("Puma",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(width: 50,),
                  Text("NB",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(width: 30,),
                  Text("Converse",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),
        
              const SizedBox(height: 40,),
              Row(
                children: [
                  Text("Today Sale!",style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 27,
                    fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(width: 10,),
        
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.red[100]
                    ),
                    child:  Center(
                      child: Text("04:43:23",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red[400]
                      ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 45,),
                  GestureDetector(
                    onTap: (){
                      signOut();
                    },
                    child: const Text("See More",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 15
                    ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          clipBehavior: Clip.hardEdge,
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.network("https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/4f709b72-d5fa-442d-b6df-4c89ee2eec5a/alphafly-2-road-racing-shoes-DcWrKF.png",fit: BoxFit.cover,),
                        ),
                        const Gap(15),
                        const Text("Nike Alphafly 2",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        const Text("Men'sRode Racing Shoes",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey
                        ),
                        ),
                         const Text("1Colour",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey
                        ),
                        )
                      ],
                    ),
                    const Gap(15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          clipBehavior: Clip.hardEdge,
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.network("https://www.ekinsport.com/media/opti_image/webp/catalog/product/cache/2c37051f1593dcbd0cbd2eb255450bfc/f/b/fb7320-010_parka-nike-club-stadium-noir-homme-fb7320-010_01.webp",fit: BoxFit.cover,),
                        ),
                        const Gap(15),
                        const Text("Nike Club",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        const Text("Men's Stadium Parka",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey
                        ),
                        ),
                         const Text("1Colour",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey
                        ),
                        )
                      ],
                    ),
                    const Gap(15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          clipBehavior: Clip.hardEdge,
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.network("https://static.nike.com/a/images/f_auto,cs_srgb/w_1536,c_limit/g1ljiszo4qhthfpluzbt/nike-joyride.jpg",fit: BoxFit.cover,),
                        ),
                        const Gap(15),
                        const Text("Nike Joyride",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        const Text("Men's Walking Shoe",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey
                        ),
                        ),
                         const Text("1Colour",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey
                        ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}