import 'package:flutter/material.dart';
import 'package:mobileapp_wecc/utils/my_post.dart';

class WQIPost extends StatelessWidget {
  const WQIPost({super.key});
  @override
  Widget build(BuildContext context) {

return Scaffold(
  extendBody: true,
  extendBodyBehindAppBar: true,
  appBar: AppBar(
    title: const Text('Water Quality Index'),
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
      const SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              
                      //post
                      MyPost(
                          myposticonimagePath:'assets/cl.png',
                      ),
        
            ],
          ),
        ),
      ),
    ],
  ),
);


  }
}
