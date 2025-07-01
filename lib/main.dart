import 'package:flutter/material.dart';
import 'package:traveltracker_app/mypages/Addtravel.dart';
import 'package:traveltracker_app/mypages/dashboard.dart';
import 'package:traveltracker_app/mypages/ListItems.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/' : (context) => Addtravel(),
      '/add' : (context) => Listitems()
    },
  ));
}
