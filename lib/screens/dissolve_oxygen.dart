import 'package:flutter/material.dart';

class DissolveOxygen extends StatelessWidget {
  const DissolveOxygen({super.key});

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
                              image: AssetImage('assets/DOV1.png'), // Replace with your Pokémon image path
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
                                'Dissolve Oxygen',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Measured in milligrams per liter (mg/L) or parts per million (ppm), dissolved oxygen in water is the maximum quantity of oxygen gas that can dissolve in a specified volume of water under particular conditions. A number of variables, including salinity, pressure, and temperature, affect this limit. Warmer water holds less dissolved oxygen than colder water. Aquatic life depends on maintaining appropriate dissolved oxygen levels since oxygen is necessary for respiration and for the general well-being of aquatic environments.',
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
