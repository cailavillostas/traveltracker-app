import 'package:flutter/material.dart';
import 'package:traveltracker_app/mypages/ItemCard.dart';
import 'Travels.dart';

class Listitems extends StatefulWidget {
  const Listitems({super.key});

  @override
  State<Listitems> createState() => _ListitemsState();
}

class _ListitemsState extends State<Listitems> {
  List<Travels> travels = [
    Travels(destination: 'Baguio', startDate: 'July 1, 2025', endDate: 'July 5, 2025', budget: 10000, vehicle: 'Car'),
    Travels(destination: 'Chocolate Hills', startDate: 'July 6, 2025', endDate: 'July 10, 2025', budget: 20000, vehicle: 'Bus'),
    Travels(destination: 'Palawan', startDate: 'July 11, 2025', endDate: 'July 15, 2025', budget: 20000, vehicle: 'Ship'),
    Travels(destination: 'Japan', startDate: 'July 16,2025', endDate: 'July 20,2025', budget: 35000, vehicle: 'Airplane'),
    Travels(destination: 'Boracay', startDate: 'July 21,2025', endDate: 'July 25,2025', budget: 15000, vehicle: 'Airplane'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Travel Itenary',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.lightBlue,
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.black,
                offset: Offset(2.0, 2.0),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10),
        itemCount: travels.length,
        itemBuilder: (context, index) {
          return Itemcard(travels: travels[index]);
        },
      ),
    );
  }
}