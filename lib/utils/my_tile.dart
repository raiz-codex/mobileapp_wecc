import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  final String tileSubtitle;

  // ignore: use_super_parameters
  const MyTile({
    Key? key,
    required this.iconImagePath,
    required this.tileTitle,
    required this.tileSubtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return      Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        Row(
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

                       const  SizedBox(width: 20,),

                        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          const   Text(
                              'title',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            ),
                           const  SizedBox(height: 8,),
                            Text(
                              'subTitle',
                            style: TextStyle(
                          
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                            ),
                          ],
                        ),   
                          ],
                        ),
                     const   Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ],
                    );
                 

  }
}
