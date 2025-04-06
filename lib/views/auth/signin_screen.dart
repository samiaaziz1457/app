// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

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
          Text("sign in to continue",style: TextStyle(color: Colors.black,fontSize: 25),),
          
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
                hintText: "Google",
                
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
           ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(left:100,top: 15),
            child: Row(
              children: [
                Text("By signing in, You accepting our",style: TextStyle(fontSize: 17,color: Colors.black),),
                 TextButton(onPressed: (){}, child: Text("Terms and conditions ",style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.bold),))
              ],
            ),
          ),
        ],
      ),
    );
  }
}