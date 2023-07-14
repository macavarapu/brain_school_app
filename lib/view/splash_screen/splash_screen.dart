


import 'dart:async';

import 'package:brain_school_starter/constants/image_constants.dart';
import 'package:flutter/material.dart';

import '../../constants/colors_constants.dart';



class Splashscreen extends StatefulWidget {
 const Splashscreen({super.key});

 @override
 State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
 void initState() {
  super.initState();
  Timer(Duration(seconds: 8),
          ()=>Navigator.popAndPushNamed(context, "/login"));
// ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) =>  Landingscreen ())));
 }

 @override
 Widget build(BuildContext context) {

  return Scaffold(
// backgroundColor: Color.fromRGBO(30, 30, 233, 1),
   backgroundColor:  kPrimaryColor,
   body: Center(

    child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceAround,
     children: [
      Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
        Text("School",
         style: Theme.of(context).textTheme.bodyText1!.copyWith(
          color: kTextWhiteColor,
          fontSize: 50,
          fontStyle: FontStyle.italic,
          letterSpacing: 2.0,
         ),
        ),
        Text("Brain",
         style: Theme.of(context).textTheme.bodyText1!.copyWith(
          color: kTextWhiteColor,
          fontSize: 50,
          fontStyle: FontStyle.italic,
          letterSpacing: 2.0,
         ),
        ),
       ],
      ),
      Image.asset(

       ImageConstants.splash,
       height: 150,width: 150,),

     ],
    ),
   ),
  );
 }
}