// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
          
            )
        ],
     ),
    );
  }
}