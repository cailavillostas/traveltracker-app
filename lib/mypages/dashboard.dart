import 'package:flutter/material.dart';

class dashboard extends StatelessWidget {
  const dashboard ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent[50],
      appBar: AppBar(
        title: Text(
          'Travel Tracker',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.cyanAccent,
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.black,
                offset: Offset(2.0, 2.0),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.cyanAccent[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // "User Profile" Title
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'User Profile',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10), // spacing between text and icon
                  Icon(
                    Icons.person,
                    color: Colors.cyanAccent,
                    size: 100,
                  ),
                ],
              ),
            ),
            // Name
            Text(
              'Name:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.cyan[800],
              ),
            ),
            Text(
              'Caila Joy Villostas',
              style: TextStyle(
                fontSize: 22,
                color: Colors.cyan[600],
              ),
            ),
            SizedBox(height: 20),

            // Email
            Text(
              'Email:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.cyan[800],
              ),
            ),
            Text(
              'cailavillostas@gmail.com',
              style: TextStyle(
                fontSize: 22,
                color: Colors.cyan[600],
              ),
            ),
            SizedBox(height: 20),

            // Company
            Text(
              'Company:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.cyan[800],
              ),
            ),
            Text(
              'Batangas State University',
              style: TextStyle(
                fontSize: 22,
                color: Colors.cyan[600],
              ),
            ),
            SizedBox(height: 20),

            // Contact
            Text(
              'Contact:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.cyan[600],
              ),
            ),
            Text(
              '09350676618',
              style: TextStyle(
                fontSize: 22,
                color: Colors.cyan[600],
              ),
            ),
            SizedBox(height: 30),

            // Logout Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add logout logic here
                  print("User logged out");
                  // Navigator.pushReplacement(...) if navigating to login screen
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyanAccent,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Logout',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}