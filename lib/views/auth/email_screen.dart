// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/views/auth/otp.dart';
import 'package:flutter/material.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 010,top: 150),
        child: Column(
          children: [
            Icon(Icons.medical_services,color:const Color.fromARGB(255, 43, 126, 46),size: 70,),
              Text("CarePlus",style:TextStyle(color: const Color.fromARGB(255, 43, 126, 46), fontSize: 45),),
            SizedBox(
              height: 70,
            ),
            Text("Enter Your Email",style:TextStyle(color: const Color.fromARGB(255, 43, 126, 46), fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height:20,),
             Text("The verification code will  send to the number",style: TextStyle(color: Colors.black,fontSize: 20,),),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
            child: TextField(
              decoration: InputDecoration(
                 prefixIcon: Icon(Icons.mail),
                hintText: "Enter your email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),borderSide:BorderSide(color: Colors.black) ),
              ),
            ),),
            SizedBox(height: 10,),
            Text("Or",style: TextStyle(color: Colors.black,fontSize: 25,),),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
            child: TextField(
              decoration: InputDecoration(
                // prefixText: '+92',prefixStyle: TextStyle(color: const Color.fromARGB(31, 0, 0, 0)),
              prefixIcon: Icon(Icons.phone),
                hintText: "Moblie number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),borderSide:BorderSide(color: Colors.black) ),
              ),
            ),),
       Padding(
      padding: const EdgeInsets.only(top: 50),
      child: ElevatedButton(
        onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OtpScreen()), // Replace your screen
      );
        },
        style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 26, 145, 28), // Green
      padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 13),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      elevation: 10,
      shadowColor: const Color.fromARGB(255, 143, 141, 141),
        ),
        child: const Text(
      "Continue",
      style: TextStyle(
        fontSize: 35,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
        ),
      ),
    ),
           ] ),
           )
        );
  }
}