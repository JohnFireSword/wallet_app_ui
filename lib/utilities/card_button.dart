import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;
  const CardButton(
      {super.key, required this.buttonText, required this.iconImagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Colors.white, blurRadius: 40, spreadRadius: 10)
              ], //color: Colors.white,
              borderRadius: BorderRadius.circular(20)),
          height: 90,
          child: Center(
            child: Image.asset(
              iconImagePath,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          buttonText,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700),
        ),
      ],
    );
  }
}
