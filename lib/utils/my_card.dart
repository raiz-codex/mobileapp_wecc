       import 'package:flutter/material.dart';
      // ignore: unnecessary_import
      import 'package:flutter/widgets.dart';
      class MyCard extends StatelessWidget {
        // ignore: prefer_typing_uninitialized_variables
      final String cardiconImagePath;
      final String cardTitle;
     final String cardSubtitle;

        const MyCard({super.key, 
        
        required this.cardiconImagePath,
        required this.cardTitle,
        required this.cardSubtitle,
        
        }); 
        @override


        Widget build(BuildContext context)
        {
            return Container(
                height: 200,
                width: 360,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color:const  Color.fromARGB(255, 215, 213, 218),
                  borderRadius: BorderRadius.circular(16),
                  
                ),
                child: 
              
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const  SizedBox(height: 10),
                  
                    Text(cardTitle),
                    Row(
                      children: [
                        Text(cardSubtitle),
                   
                      ],
                    ),
                  ],
                ),
              );
        

        }
      }
       
       
        