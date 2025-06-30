import 'package:flutter/material.dart';
import '../mypages/Travels.dart';

class Itemcard extends StatelessWidget {
  final Travels travels;

  const Itemcard({Key? key, required this.travels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 170, // ✅ Fixed taller height
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.lightBlue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.25),
              spreadRadius: 1,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // ✅ Vertical center
          crossAxisAlignment: CrossAxisAlignment.center, // ✅ Horizontal center
          children: [
          Text(
          travels.destination,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.blue[900],
          ),
        ),

        SizedBox(height: 8),
          Text('From: ${travels.startDate}', style: TextStyle(fontSize: 16)),
          Text('To: ${travels.endDate}', style: TextStyle(fontSize: 16)),
          Text('Budget: ₱${travels.budget.toStringAsFixed(2)}', style: TextStyle(fontSize: 16)),
          Text('Vehicle: ${travels.vehicle}', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}