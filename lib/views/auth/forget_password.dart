// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/views/auth/otp.dart';
import 'package:app/views/auth/signin_screen.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
          Padding(
            padding: const EdgeInsets.only(right: 300,top: 30),
            child: Text(" Forget  Password ",style: TextStyle(color: const Color.fromARGB(255, 43, 126, 46),fontSize: 30,fontWeight: FontWeight.bold),),
          ),
         Padding(
           padding: const EdgeInsets.only(left: 30,top: 20),
           child: Text("Enter your Email address registered with your account.we will send back a link to reset your password. ",style: TextStyle(color: Colors.black,fontSize: 20),),
         ),
        //  Text('Email',style: TextStyle(color: Colors.black,fontSize: 24),)
        Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Email",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
          Padding(
      padding: const EdgeInsets.only(top: 40),
      child: ElevatedButton(
        onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OtpScreen()), // Replace your screen
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
      "Submit",
      style: TextStyle(
        fontSize: 35,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
        ),
      ),
    ),
         Padding(
           padding: const EdgeInsets.only(top: 20,left: 140),
           child: Row(
             children: [
               Text("You don't have any account",style: TextStyle(color: Colors.black,fontSize: 15),),
               TextButton(onPressed: (){
           Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) =>SigninScreen()), // Replace your screen
                 );
                  }, child: Text("Sign in in to your account",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold),))  
             ],
           ),
         ),
        ],
     ),
    );
  }
}