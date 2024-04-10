import 'package:flutter/material.dart';

class Wecc extends StatefulWidget {
  const Wecc({super.key});

  @override
  _WaterQualityCalculationState createState() => _WaterQualityCalculationState();
}

class _WaterQualityCalculationState extends State<Wecc> {
  TextEditingController WqccController = TextEditingController();
  TextEditingController WrccController = TextEditingController();

  String weccResult = '';
  String carryingCondition = '';

  void calculateWECC() {
    double wqcc = double.tryParse(WqccController.text) ?? 0.0;
    double wrcc = double.tryParse(WrccController.text) ?? 0.0;

    double wL = 0.36; 
    double wZ = 0.64; 

    // Calculate WECC
    double wecc = (wqcc * wL) + (wrcc * wZ);
    
    // Determine carrying condition
    if (wecc == 1) {
      carryingCondition = 'The carrying condition is in accordance with the WECC';
    } else if (wecc < 1) {
      carryingCondition = 'The carrying condition is at an acceptable level of the WECC';
    } else {
      carryingCondition = 'The carrying condition is beyond the WECC';
    }

    setState(() {
      weccResult = 'WECC: ${wecc.toStringAsFixed(2)}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('WECC Calculation'),
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 25),
                    Text(
                      'Enter values for quality indicators:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: WqccController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Enter WQCC value',
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: WrccController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Enter WRCC value',
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: calculateWECC,
                      child: Text('Calculate WECC'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      weccResult,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      carryingCondition,
                      style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                    ),
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
