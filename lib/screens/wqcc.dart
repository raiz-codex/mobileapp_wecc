// import 'package:flutter/material.dart';

// class Wqcc extends StatefulWidget {
//   const Wqcc({super.key});

//   @override
//   _WaterQualityCalculationState createState() => _WaterQualityCalculationState();
// }

// class _WaterQualityCalculationState extends State<Wqcc> {
//   TextEditingController tpController = TextEditingController();
//   TextEditingController tnController = TextEditingController();
//   TextEditingController bod5Controller = TextEditingController();

//   String wqccResult = '';

//   void calculateWQCC() {
//     double tp = double.tryParse(tpController.text) ?? 0.0;
//     double tn = double.tryParse(tnController.text) ?? 0.0;
//     double bod5 = double.tryParse(bod5Controller.text) ?? 0.0;

//     // Define weights for TP, TN, and BOD5
//     double wTP = 0.38; // Weight for TP
//     double wTN = 0.36; // Weight for TN
//     double wBOD5 = 0.32; // Weight for BOD5

//     // Calculate carrying capacity level of water quality (WQCC)
//     double wqcc = (tp * wTP + tn * wTN + bod5 * wBOD5);

//     // Determine carrying condition based on WQCC value
//     String condition;
//     if (wqcc == 1) {
//       condition = 'in accordance with the WQCC';
//     } else if (wqcc < 1) {
//       condition = 'at an acceptable level of the WQCC';
//     } else {
//       condition = 'beyond the WQCC';
//     }

//     // Update the state with the result and condition
//     setState(() {
//       wqccResult = 'WQCC: ${wqcc.toStringAsFixed(2)}, carrying condition is $condition';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text('WQCC Calculation'),
//         backgroundColor: Colors.transparent, // Make the app bar transparent
//         elevation: 0, // Remove the app bar shadow
//       ),
//       body: Stack(
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/bg.jpg'), // Change to your background image path
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SingleChildScrollView(
//             child: SafeArea(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(height: 25),
//                     Text(
//                       'Enter values for quality indicators:',
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 10),
//                     TextField(
//                       controller: tpController,
//                       keyboardType: TextInputType.number,
//                       decoration: InputDecoration(
//                         labelText: 'Enter TP value',
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     TextField(
//                       controller: tnController,
//                       keyboardType: TextInputType.number,
//                       decoration: InputDecoration(
//                         labelText: 'Enter TN value',
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     TextField(
//                       controller: bod5Controller,
//                       keyboardType: TextInputType.number,
//                       decoration: InputDecoration(
//                         labelText: 'Enter BOD5 value',
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     ElevatedButton(
//                       onPressed: calculateWQCC,
//                       child: Text('Calculate WQCC'),
//                     ),
//                     SizedBox(height: 20),
//                     Text(
//                       wqccResult,
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';

class Wqcc extends StatefulWidget {
  const Wqcc({super.key});

  @override
  _WaterQualityCalculationState createState() => _WaterQualityCalculationState();
}

class _WaterQualityCalculationState extends State<Wqcc> {
  TextEditingController tpController = TextEditingController();
  TextEditingController tnController = TextEditingController();
  TextEditingController bod5Controller = TextEditingController();

  String wqccResult = '';

  void calculateWQCC() {
    double tp = double.tryParse(tpController.text) ?? 0.0;
    double tn = double.tryParse(tnController.text) ?? 0.0;
    double bod5 = double.tryParse(bod5Controller.text) ?? 0.0;

    // Define weights for TP, TN, and BOD5
    double wTP = 0.38; // Weight for TP
    double wTN = 0.36; // Weight for TN
    double wBOD5 = 0.32; // Weight for BOD5

    // Calculate carrying capacity level (CSI) for each indicator
    double csiTP = tp / 0.5; // CSI for TP
    double csiTN = tn / 7; // CSI for TN
    double csiBOD5 = bod5 / 7; // CSI for BOD5

    // Calculate carrying capacity level of water quality (WQCC)
    double wqcc = (csiTP * wTP + csiTN * wTN + csiBOD5 * wBOD5); // Taking the average of CSI values

    // Determine carrying condition based on WQCC value
    String condition;
    if (wqcc == 1) {
      condition = 'in accordance with the WQCC';
    } else if (wqcc < 1) {
      condition = 'at an acceptable level of the WQCC';
    } else {
      condition = 'beyond the WQCC';
    }

    // Update the state with the result and condition
    setState(() {
      wqccResult = 'WQCC: ${wqcc.toStringAsFixed(2)}, carrying condition is $condition';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('WQCC Calculation'),
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
                      controller: tpController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Enter TP value',
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: tnController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Enter TN value',
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: bod5Controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Enter BOD5 value',
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: calculateWQCC,
                      child: Text('Calculate WQCC'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      wqccResult,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
