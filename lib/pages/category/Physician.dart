import 'package:flutter/material.dart';

class Physician extends StatefulWidget {
  const Physician({Key? key}) : super(key: key);

  @override
  _PhysicianState createState() => _PhysicianState();
}

class _PhysicianState extends State<Physician> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(title: Text('Physician')),
    );
  }
}
