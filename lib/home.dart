import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
 class HomeScreen extends StatelessWidget {
   const HomeScreen({super.key});
   @override
   build (BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         actions: [
           IconButton(
             icon: const Icon(Icons.person),
               onPressed: () {
                 Navigator.push(
                     context,
                     MaterialPageRoute <ProfileScreen>(
                       builder: (context) => ProfileScreen(
                         appBar: AppBar (
                           title: const Text("User Profile"),
                         ),
                         actions: [
                           SignedOutAction((context) {
                             Navigator.of(context).pop();
                           })
                         ],
                         children: [
                           const Divider(),
                           Padding(
                               padding: const EdgeInsets.all(2),
                             child: Image.asset("assets/flutterfire 300x.png"),
                           ),
                         ],
                       )
                     )
                 );
               },
           )
         ],
         automaticallyImplyLeading: true,
       ),
  body: Center(
    child: Column(
      children: [
        Image.asset('dash.png'),
        const Text("Welcome!", style: TextStyle(color: Colors.green)),
        const SignOutButton(),
      ],
    ),
  ),
     );
   }
 }