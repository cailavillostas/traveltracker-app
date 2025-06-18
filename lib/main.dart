import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Travel Tacker'),
        backgroundColor: Colors.lightBlueAccent[700],
      ),
      backgroundColor: Colors.lightBlueAccent[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Adventure',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
                color: Colors.lightBlue[200],
              ),
            ),
            Text(
              'Trail',
              style: TextStyle(
                fontSize: 22,
                fontStyle: FontStyle.normal,
                color: Colors.lightBlue[400],
              ),
            ),
            Text(
              'Travel',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.lightBlue[500],
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}