import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobileapp_wecc/screens/home_screen.dart';
import 'package:mobileapp_wecc/screens/water_parameters.dart';
import 'package:mobileapp_wecc/screens/welcome_screen.dart';

// ignore: unused_import
import 'screens/wqi_post_screen.dart';

import 'screens/wqi_screen.dart';

import 'screens/wqcc.dart';
import 'screens/water_parameters.dart';
import 'screens/wecc.dart';
import 'screens/wrcc.dart';


import 'screens/dissolve_oxygen.dart';
import 'screens/ph.dart';
import 'screens/temperature.dart';
import 'screens/nitrogen.dart';
import 'screens/phosporus.dart';
import 'screens/bod.dart';
import 'screens/tss.dart';
import 'screens/nitrate.dart';
import 'screens/phosphate.dart';

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
         GoRoute (path : "wqcc" , builder: (context, state ) => const Wqcc()),
          GoRoute (path : "water-parameter" , builder: (context, state ) => const WaterParameter()),
         GoRoute (path : "wecc" , builder: (context, state ) => const Wecc()),
                  GoRoute (path : "wrcc" , builder: (context, state ) => const Wrcc()),

                  GoRoute (path : "dissolve-oxygen" , builder: (context, state ) => const DissolveOxygen()),
                  GoRoute (path : "pH" , builder: (context, state ) => const PH()),
                  GoRoute (path : "temperature" , builder: (context, state ) => const Temperature()),
                  GoRoute (path : "total-nitrogen" , builder: (context, state ) => const TotalNitrogen()),
                  GoRoute (path : "total-phosporus" , builder: (context, state ) => const TotalPhosporus()),
                  GoRoute (path : "bod" , builder: (context, state ) => const BOD()),
                  GoRoute (path : "tss" , builder: (context, state ) => const TSS()),
                  GoRoute (path : "nitrate" , builder: (context, state ) => const Nitrate()),
                  GoRoute (path : "phosphate" , builder: (context, state ) => const Phosphate()),
                 
               ]),
      //   GoRoute (path : "/watercci" , builder: (context, state ) => const Landingpage()),
      //   GoRoute (path : "/information" , builder: (context, state ) => const Information()),
     
   

            ]);
          }

