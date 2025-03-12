import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final double balance;
  final int cardNum;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const CreditCard(
      {super.key,
      required this.balance,
      required this.cardNum,
      required this.color,
      required this.expiryMonth,
      required this.expiryYear});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Balance',
                  style: TextStyle(color: Colors.white),
                ),
                  Image.asset(
                      'icons/visa-512.png',
                      height: 50,
                    ),
              ],
            ),
          
            Text(
              '\$${balance.toStringAsFixed(2)}',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNum.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  '$expiryMonth/$expiryYear',
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
