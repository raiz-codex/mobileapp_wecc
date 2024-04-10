import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;
  final VoidCallback onPressed;

  // ignore: use_super_parameters
  const MyButton({
    Key? key,
    required this.iconImagePath,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            height: 100,
            padding: const EdgeInsets.all(2),
            // decoration: BoxDecoration(
            //   color: const Color.fromARGB(255, 190, 198, 196),
            //   borderRadius: BorderRadius.circular(10),
            //   boxShadow: [
            //     BoxShadow(
            //       color: Colors.grey.shade500,
            //       blurRadius: 10,
            //       spreadRadius: 5,
            //     ),
            //   ],
            // ),
            child: Center(
              child: Image.asset(
                iconImagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Text
          Text(
            buttonText,
            style:  TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }
}
