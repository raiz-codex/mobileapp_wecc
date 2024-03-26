import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobileapp_wecc/screens/home_screen.dart';
import 'package:mobileapp_wecc/screens/welcome_screen.dart';

// ignore: unused_import
import 'screens/wqi_post_screen.dart';

import 'screens/wqi_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
    MainApp({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp.router(
      title: 'wecc',
      routerConfig: _router ,
    );
  }



final GoRouter _router=GoRouter(
     initialLocation: "/welcomescreen",
     routes : [
      GoRoute (path : "/welcomescreen" , builder: (context, state ) => const WelcomeScreen()),
      GoRoute (path : "/" , builder: (context, state ) => const HomesScreen(), routes:  [
         GoRoute (path : "wqi" , builder: (context, state ) => const WQI()),
         GoRoute (path : "wqi-post" , builder: (context, state ) => const WQIPost()),
               ]),
      //   GoRoute (path : "/watercci" , builder: (context, state ) => const Landingpage()),
      //   GoRoute (path : "/information" , builder: (context, state ) => const Information()),
     
   

            ]);
          }

