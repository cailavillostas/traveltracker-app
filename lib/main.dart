import 'package:flutter/material.dart';
import 'WorldTime/Choose_location.dart';
import 'WorldTime/mypages/Home.dart';
import 'WorldTime/mypages/Loading.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',  // ✅ Correct this if empty
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),     // ✅ lowercase route
    '/location': (context) => ChooseLocation(),
  },
));
