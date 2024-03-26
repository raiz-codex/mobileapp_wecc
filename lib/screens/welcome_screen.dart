import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

@override
Widget build(BuildContext context){


      return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/bg.jpg',
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 120),
              child: ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).go('/');
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    
                    Text('See More'),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
  



    );
  }
}