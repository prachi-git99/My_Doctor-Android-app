import 'package:flutter/material.dart';

class Orthopedic extends StatefulWidget {
  const Orthopedic({Key? key}) : super(key: key);

  @override
  _OrthopedicState createState() => _OrthopedicState();
}

class _OrthopedicState extends State<Orthopedic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(title: Text('Orthopedic')),
    );
  }
}
