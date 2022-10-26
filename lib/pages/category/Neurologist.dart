import 'package:flutter/material.dart';
class Neurologists extends StatefulWidget {
  const Neurologists({Key? key}) : super(key: key);

  @override
  _NeurologistsState createState() => _NeurologistsState();
}

class _NeurologistsState extends State<Neurologists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(title: Text('Neurologists')),
    );
  }
}
