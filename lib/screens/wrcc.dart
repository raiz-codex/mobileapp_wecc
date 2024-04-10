import 'package:flutter/material.dart';

class Wrcc extends StatefulWidget {
  const Wrcc({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WaterQualityCalculationState createState() => _WaterQualityCalculationState();
}

class _WaterQualityCalculationState extends State<Wrcc> {
  // TextEditingController SocialEconomyController = TextEditingController();
  // TextEditingController TourismController = TextEditingController();
  // TextEditingController AquacultureController = TextEditingController();


  TextEditingController PopulationController = TextEditingController();
  TextEditingController GdpController = TextEditingController();
  TextEditingController DailyAverageGuestController = TextEditingController();
    TextEditingController AnnualTouristVisitController = TextEditingController();
  TextEditingController ActiveFishcageController = TextEditingController();
  TextEditingController StackingDensityController = TextEditingController();


  String wrccResult = '';
  String carryingCondition = '';

   void calculateWRCC() {
  //   double socialEconomy = double.tryParse(SocialEconomyController.text) ?? 0.0;
  //   double tourism = double.tryParse(TourismController.text) ?? 0.0;
  //   double aquaculture = double.tryParse(AquacultureController.text) ?? 0.0;

  double population = double.tryParse(PopulationController.text) ?? 0.0;
  double gdp = double.tryParse(GdpController.text) ?? 0.0;
  double dailyAverageGuest = double.tryParse(DailyAverageGuestController.text) ?? 0.0;
  double annualTouristVisit = double.tryParse(AnnualTouristVisitController.text) ?? 0.0;
  double activeFishcage = double.tryParse(ActiveFishcageController.text) ?? 0.0;
  double stackingDensity = double.tryParse(StackingDensityController.text) ?? 0.0;


 // Calculate carrying capacity level (CSI) for each indicator
    double csipopulation = population / 5; // CSI for TP
    double csigdp = gdp / 500000; // CSI for TN

    double csidailyAverageGuest = dailyAverageGuest / 10; // CSI for BOD5
    double csiannualTouristVisit = annualTouristVisit / 2500; // CSI for TP

    double csiactiveFishcage = activeFishcage / 30; // CSI for TN
    double csistackingDensity = stackingDensity / 30000; // CSI for BOD5

 double populationWeight =  0.5; // CSI for BOD5
 double gdpWeight =  0.5; // CSI for BOD5

 double dailyAverageGuestWeigt =    0.5; // CSI for BOD5
 double annualTouristVisitWeight =  0.5; // CSI for BOD5

 double activeFishcageWeight =  0.5; // CSI for BOD5
 double stackingDensityWeight =  0.5; // CSI for BOD5

    

    double socialEconomy =  (csipopulation * populationWeight) + (csigdp * gdpWeight); 
    double tourism = (csidailyAverageGuest * dailyAverageGuestWeigt) + (csiannualTouristVisit * annualTouristVisitWeight) ; 
    double aquaculture = (csiactiveFishcage * activeFishcageWeight) + (csistackingDensity * stackingDensityWeight) ; 




    double socialEconomyWeight = 0.16; 
    double tourismWeight = 0.10; 
    double aquacultureWeight = 0.38; 

    // Calculate WECC
    double wrcc = (socialEconomy * socialEconomyWeight) + (tourism * tourismWeight) + ( aquaculture * aquacultureWeight);
    
    // Determine carrying condition
    if (wrcc == 1) {
      carryingCondition = 'The carrying condition is in accordance with the WECC';
    } else if (wrcc < 1) {
      carryingCondition = 'The carrying condition is at an acceptable level of the WECC';
    } else {
      carryingCondition = 'The carrying condition is beyond the WECC';
    }

    setState(() {
      wrccResult = 'WRCC: ${wrcc.toStringAsFixed(2)}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('WRCC Calculation'),
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
                    const Text(
                      'Enter values for quality indicators:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),



                    TextField(
                      controller: PopulationController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Enter Population value',
                      ),
                    ),
                   const  SizedBox(height: 10),


                    TextField(
                      controller: GdpController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Enter GDP value',
                      ),
                    ),
                   const  SizedBox(height: 10),


                    TextField(
                      controller: DailyAverageGuestController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Enter Daily Average Guest value',
                      ),
                    ),
                   const  SizedBox(height: 10),


                    TextField(
                      controller: AnnualTouristVisitController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Enter Annual Tourist Visiting value',
                      ),
                    ),
                   const  SizedBox(height: 10),



                    TextField(
                      controller: ActiveFishcageController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Enter Active Cages value',
                      ),
                    ),

                 const  SizedBox(height: 10),



                    TextField(
                      controller: StackingDensityController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Enter Stacking Density value',
                      ),
                    ),



                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: calculateWRCC,
                      child: const Text('Calculate WRCC'),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      wrccResult,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      carryingCondition,
                      style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
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
