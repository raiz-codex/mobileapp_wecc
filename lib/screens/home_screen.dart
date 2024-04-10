import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobileapp_wecc/utils/my_button.dart';
import 'package:mobileapp_wecc/utils/my_card.dart';
import 'package:mobileapp_wecc/utils/my_tile.dart';

class HomesScreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HomesScreen({Key? key});

  @override
  Widget build(BuildContext context) {

return Scaffold(
  extendBody: true,
  extendBodyBehindAppBar: true,
  appBar: AppBar(
    title: const Text('WECC Mobile App'),
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
              //  SizedBox(height: 25),
              //card
            //  const   MyCard(
            //     cardiconImagePath: 'assets/fp.jpg', 
            //     cardTitle: 'WECC mobile',
            //     cardSubtitle: 'Wecc app',
            //   ),

             const   SizedBox(height: 25),
              // button 
              Padding(
                padding:const  EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // button 1
                    MyButton(
                      iconImagePath: 'assets/WRCCV1.png', 
                      buttonText: 'Water Parameters',
                      onPressed: () {
                        // GoRouter.of(context).go('/wqi');
                        context.go('/wqi');
                      },
                    ),
                    // button 2
                    MyButton(
                      iconImagePath: 'assets/WECCV1.png', 
                      buttonText: 'WECC',
                      onPressed: () {
                        GoRouter.of(context).go('/wecc');
                      },
                    ),
                
                
               


                  ],
                ),
              ),
              const SizedBox(height: 15),
              // tiles
              // const  Padding(
              //   padding: EdgeInsets.all(25.0),
              //   child:Column(
              //       children: [
              //       MyTile(
              //         iconImagePath: 'assets/cl.png',
              //         tileTitle: 'stats',
              //         tileSubtitle: ' history',
              //       ),
              //       SizedBox(height: 15,),
              //       MyTile(
              //         iconImagePath: 'assets/cl.png',
              //         tileTitle: 'stats',
              //         tileSubtitle: ' history',
              //       ),
              //       ],
              //   ),
               
              // ),

             
           
            
              Padding(
                padding:const  EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // button 1
                   MyButton(
                      iconImagePath: 'assets/WRCCV1.png', 
                      buttonText: 'WRCC',
                      onPressed: () {
                        GoRouter.of(context).go('/wrcc');
                      },
                    ),
                   // button 2
                 MyButton(
                      iconImagePath: 'assets/WQCCV1.png', 
                      buttonText: 'WQCC',
                      onPressed: () {
                        GoRouter.of(context).go('/wqcc');
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
