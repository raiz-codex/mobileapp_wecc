import 'package:flutter/material.dart';

class Temperature extends StatelessWidget {
  const Temperature({super.key});

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
                              image: AssetImage('assets/TEMPV1.png'), // Replace with your Pokémon image path
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
                                'Temperature',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'In terms of water parameters, temperature describes how hot or cold the water is. Degrees Celsius (°C) or Fahrenheit (°F) are commonly used to measure it. Temperature affects a number of aquatic activities, such as chemical reactions, organism metabolic rates, and dissolved oxygen levels. While the ideal temperature range varies depending on the aquatic habitat, in freshwater settings, it typically ranges from 0°C to 30°C (32°F to 86°F). Temperature extremes outside of this range are harmful to aquatic species.',
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
