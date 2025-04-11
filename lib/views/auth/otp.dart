// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:app/views/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 50,top: 150),
        child: Column(
          children: [
            Icon(Icons.medical_services,color:const Color.fromARGB(255, 43, 126, 46),size: 70,),
              Text("CarePlus",style:TextStyle(color: const Color.fromARGB(255, 43, 126, 46), fontSize: 45),),
            SizedBox(
              height: 80,
            ),
             Text("Enter Verification Code",style:TextStyle(color: const Color.fromARGB(255, 43, 126, 46), fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height:20,),
             Text("Enter your six digit code that send to your moblie ",style: TextStyle(color: Colors.black,fontSize: 20,),),
             SizedBox(height: 100,),
            OtpTextField(
                   numberOfFields: 5,
                   borderColor:Colors.green,
                  
                   showFieldAsBox: true, 
                   
                   onCodeChanged: (String code) {
                    
                   },
                   
                   onSubmit: (String verificationCode){
              showDialog(
                  context: context,
                  builder: (context){
                  return AlertDialog(
                      title: Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                  );
                  } );},
               ),
              Padding(
      padding: const EdgeInsets.only(top: 50,left: 20,right: 30),
      child: ElevatedButton(
        onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>HomeScreen()), // Replace your screen
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
      "Verify",
      style: TextStyle(
        fontSize: 35,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
        ),
      ),
    ),
          ],
        ),
      ),
    );
  }
}