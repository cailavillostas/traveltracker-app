import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.lightBlue[200],
      appBar: AppBar(
        title: Text('Travel tracker App'),
        backgroundColor: Colors.blue[300],
      ),
      body: Column(
        children: [
          // Name Row with container and all margin
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Name:',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  //margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    'Caila Villostas',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Age Row with symmetric margin
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Age:',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  //margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    '20 Years Old',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Gender Row with fromLTRB margin
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Gender:',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  //margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    'Female',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ));
}
