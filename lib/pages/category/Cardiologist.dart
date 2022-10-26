import 'package:flutter/material.dart';

class Cardiologist extends StatefulWidget {
  const Cardiologist({Key? key}) : super(key: key);

  @override
  _CardiologistState createState() => _CardiologistState();
}

class _CardiologistState extends State<Cardiologist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(title: Text('Cardiologist')),
    );
  }
}
