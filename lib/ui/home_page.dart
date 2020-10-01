import 'package:flutter/material.dart';
import 'package:myanmar_covid19_track_app/ui/home_helper.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amberAccent,
        title:Text("State & Division Cases")
      ),
      body:HomeHepler(),
    );
  }
}