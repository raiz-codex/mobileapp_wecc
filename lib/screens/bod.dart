import 'package:flutter/material.dart';

class BOD extends StatelessWidget {
  const BOD({super.key});

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
                              image: AssetImage('assets/BODV1.png'), // Replace with your Pokémon image path
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
                                'Biological Oxygen Demand',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'The amount of dissolved oxygen that microorganisms in water use throughout the course of breaking down organic matter is known as biological oxygen demand, or BOD. This process typically takes five days. Usually, it is stated as milligrams (mg/L) of oxygen per liter of water. Elevated BOD levels are a sign of organic pollution and can cause oxygen depletion, which is bad for aquatic life and bad for the quality of the water. In order to guarantee that water bodies maintain sufficient quantities of dissolved oxygen to sustain aquatic ecosystems, regulatory organizations frequently establish BOD limitations.',
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
