import 'package:brain_school_starter/view/assignment_screen/assignment_screen.dart';
import 'package:brain_school_starter/view/datesheet_screen/datesheet_screen.dart';
import 'package:brain_school_starter/view/fee_screen/fee_screen.dart';
import 'package:brain_school_starter/view/home_screen/home_screen.dart';
import 'package:brain_school_starter/view/login_screen/login_screen.dart';
import 'package:brain_school_starter/view/my_profile_screen/my_profile_screen.dart';
import 'package:brain_school_starter/view/result_screen/result_screen.dart';
import 'package:brain_school_starter/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(



        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute:     "/splash",
      routes: {
        "/splash":(context) => Splashscreen(),
         "/login":(context) => Loginscreen(),
         "/home":(context) => Homescreen(),
         "/myprofile":(context) => Myprofile(),
         "/feesscreen":(context) => Feesscreen(),
         "/assignment":(context) => Assignmentscreen(),
         "/datesheet":(context) => Datesheetscreen(),
         "/result":(context) => Resultscreen(),
      },
     // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


