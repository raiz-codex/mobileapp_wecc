import 'package:flutter/material.dart';

class TotalPhosporus extends StatelessWidget {
  const TotalPhosporus({super.key});

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
                              image: AssetImage('assets/TotalPhosporusV1.png'), // Replace with your Pokémon image path
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
                                'Total Phosporus',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'The total concentration of all phosphorus present in a water sample, including dissolved, particulate, and organic phosphorus, is referred to as total phosphorus in water parameters. Parts per million (ppm) or milligrams per liter (mg/L) are the common units of measurement. Total phosphorus regulatory limits are frequently established to prevent eutrophication, a condition in which an excess of phosphorus causes algal blooms and oxygen depletion, which affects aquatic ecosystems and water quality requirements.',
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
