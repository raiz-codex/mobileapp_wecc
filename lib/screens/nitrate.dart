import 'package:flutter/material.dart';

class Nitrate extends StatelessWidget {
  const Nitrate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
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
                  // Pokémon description
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Pokémon image
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/NO3V1.png'), // Replace with your Pokémon image path
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              // BoxShadow(
                              //   color: Colors.black.withOpacity(0.3),
                              //   spreadRadius: 1,
                              //   blurRadius: 5,
                              //   offset: const Offset(0, 3),
                              // ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        // Pokémon description
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nitrate',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Common forms of nitrogen that can arise from both natural processes, such as decomposition, and human activities, such as agricultural runoff and wastewater discharge, are referred to as nitrate (NO3-) in water. Milligrams per liter, or mg/L, is the standard unit of measurement. High nitrate levels can produce methemoglobinemia, or "blue baby syndrome," which is linked to excessive nitrate levels in water and eutrophication, which can be harmful to human health, especially for newborns. To guarantee safe consumption, nitrate in drinking water is frequently regulated to a maximum of 10 mg/L.',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // MyPost widget
            
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
