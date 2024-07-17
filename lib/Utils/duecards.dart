import 'package:bankui/Utils/elevated.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DueCard extends StatelessWidget {
  final String merchantName;
  final String cardNumber;
  final String dueDate;
  final String amount;
  final VoidCallback onPay;

  const DueCard({super.key, 
    required this.merchantName,
    required this.cardNumber,
    required this.dueDate,
    required this.amount,
    required this.onPay,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(merchantName, style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(cardNumber),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Due Date'),
                    subtitle: Text(dueDate),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Amount'),
                    subtitle: Text(amount, style: const TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            ElevatedNeoPop(
              color: Colors.orange,
              onTapUp: () => HapticFeedback.vibrate(),
              onTapDown: () => HapticFeedback.vibrate(),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              label: "Pay Now",
              textStyle: const TextStyle(color: Colors.black, fontSize: 16),
              onPressed: onPay,
            ),
          ],
        ),
      ),
    );
  }
}
