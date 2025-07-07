import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_time_app/WorldTime/mypages/worldtime.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    try {
      WorldTime instance = WorldTime(
        location: 'Berlin',
        flag: 'germany.png',
        url: 'Europe/Berlin',
      );

      await instance.getTime();

      if (!mounted) return; // Avoids calling Navigator if widget is disposed
      Navigator.pushReplacementNamed(
        context,
        '/home',
        arguments: {
          'location': instance.location,
          'flag': instance.flag,
          'time': instance.time,
          'isDaytime': instance.isDaytime,
        },
      );
    } catch (e) {
      print('Error: $e');
      // Optionally: Show a Snackbar or retry logic here
    }
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
