// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:app/views/auth/email_screen.dart';
import 'package:app/views/auth/forget_password.dart';
import 'package:app/views/auth/signin_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
               color: const Color.fromARGB(255, 43, 126, 46),
               borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
               ),
            ),
            alignment: Alignment.center,
            child: 
            Padding(
              padding: const EdgeInsets.only(top:140),
              child: Column(
                children: [
                  Icon(Icons.medical_services,color:Colors.white,size: 70,),
                Text("CarePlus",style:TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 45),)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text("Welcome",style:TextStyle(color: const Color.fromARGB(255, 26, 145, 28), fontSize: 45,fontWeight:FontWeight.bold),),
          Text("sign up to continue",style: TextStyle(color: Colors.black,fontSize: 25),),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                hintText: "Moblie number",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Or",style: TextStyle(fontSize: 20),),
           Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
            child: 
            // ElevatedButton.icon(icon:Icons(Icons.g_mobiledata,size: 40,, label: label), )
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.g_mobiledata,size: 40,),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
           ),
          ),  
          Padding(
            padding: const EdgeInsets.only(left: 420),
            child: TextButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>ForgetPasswordScreen()));
            }, child: 
            Text("Forget password",style: TextStyle(color: Colors.green,fontSize: 17),)
            ),
          ),
         Padding(
      padding: const EdgeInsets.only(top: 30),
      child: ElevatedButton(
        onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => EmailScreen()), // Replace your screen
      );
        },
        style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 26, 145, 28), // Green
      padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 10,
      shadowColor: const Color.fromARGB(255, 143, 141, 141),
        ),
        child: const Text(
      "Sign Up",
      style: TextStyle(
        fontSize: 35,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
        ),
      ),
    ),
         Padding(
           padding: const EdgeInsets.only(top: 50,left: 200),
           child: Row(
             children: [
               Text("You don't have any account",style: TextStyle(color: Colors.black,fontSize: 15),),
               TextButton(onPressed: (){
           Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) =>SigninScreen()), // Replace your screen
                 );
                  }, child: Text("Sign In",style: TextStyle(color: Colors.green,fontSize: 15),))  
             ],
           ),
         ),
        ],
      ),
    );
  }
}