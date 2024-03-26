import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobileapp_wecc/utils/my_button.dart';

class WQI extends StatelessWidget {
  const WQI({super.key});
  @override
  Widget build(BuildContext context) {

return Scaffold(
  extendBody: true,
  extendBodyBehindAppBar: true,
  appBar: AppBar(
    title: const Text('WQI'),
    backgroundColor: Colors.transparent, // Make the app bar transparent
    elevation: 0, // Remove the app bar shadow
  ),
  body: Stack(
    children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'), // Change to your background image path
            fit: BoxFit.cover,
          ),
        ),
      ),
      SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              
              //button row 1
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //send button
                    MyButton(
                      iconImagePath: 'assets/DOV1.png', 
                      buttonText: 'Dissolve Oxygen',
                      onPressed: () {
                        GoRouter.of(context).go('/wqi-post');
                      },
                    ),
                    // button 1
                    MyButton(
                      iconImagePath: 'assets/PHV1.png', 
                      buttonText: 'pH',
                      onPressed: () {
                        GoRouter.of(context).go('/');
                      },
                    ),
                    //button 2
                    MyButton(
                      iconImagePath: 'assets/TEMPV1.png', 
                      buttonText: 'Temperature',
                      onPressed: () {
                        GoRouter.of(context).go('/');
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              // button row 2
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //send button
                    MyButton(
                      iconImagePath: 'assets/TotalNitrogenV1.png', 
                      buttonText: 'total posphorus',
                      onPressed: () {
                        GoRouter.of(context).go('/profile');
                      },
                    ),
                    // button 1
                    MyButton(
                      iconImagePath: 'assets/TotalPhosporusV1.png', 
                      buttonText: 'total nitrogen',
                      onPressed: () {
                        GoRouter.of(context).go('Inputpageone');
                      },
                    ),
                    //button 2
                    MyButton(
                      iconImagePath: 'assets/BODV1.png', 
                      buttonText: 'BOD',
                      onPressed: () {
                        GoRouter.of(context).go('Inputpageone');
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              //button row 3
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //send button
                    MyButton(
                      iconImagePath: 'assets/TSSV1.png', 
                      buttonText: 'WECC',
                      onPressed: () {
                        GoRouter.of(context).go('/profile');
                      },
                    ),
                    // button 1
                    MyButton(
                      iconImagePath: 'assets/NO3V1.png', 
                      buttonText: 'WRCC',
                      onPressed: () {
                        GoRouter.of(context).go('/wqi-post');
                      },
                    ),
                    //button 2
                    MyButton(
                      iconImagePath: 'assets/PO4V1.png', 
                      buttonText: 'WQCC',
                      onPressed: () {
                        GoRouter.of(context).go('/wqi-post');
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),

            ],
          ),
        ),
      ),
    ],
  ),
);


  }
}
