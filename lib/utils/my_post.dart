
import 'package:flutter/material.dart';

class MyPost extends StatelessWidget {
    final String myposticonimagePath;
  // ignore: use_super_parameters
  const MyPost({
    Key? key,
    required this.myposticonimagePath,


  }) : super(key: key);
  @override
  Widget build(BuildContext context) {

return Scaffold(
  extendBody: true,
  extendBodyBehindAppBar: true,
  appBar: AppBar(
    title: const Text('Profile'),
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
            padding: const  EdgeInsets.symmetric(vertical: 65,horizontal: 25),
            
            child: Row(
              children: [
                              //icon
              Container(
                            height: 80,
                            padding: const EdgeInsets.all(5), 
                            decoration: BoxDecoration(
                              color:Colors.grey[100],
                              borderRadius: BorderRadius.circular(12),
                              
                              
                              ),
                            child: Image.asset('assets/cl.png'),
                        ),

            const SizedBox(width: 20,),
            const  Column(
                  
                  children: [
                    
                      Text(
                        'tilte',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5
                         )
                      ),
                       SizedBox(width: 25,),
                        Text(
                          'subTilte',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5
                            )
                          ),
                       SizedBox(width: 25,),
                  ],
                  
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
