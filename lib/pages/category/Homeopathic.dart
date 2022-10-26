import 'package:flutter/material.dart';

class Homeopathic extends StatefulWidget {
  const Homeopathic({Key? key}) : super(key: key);

  @override
  _HomeopathicState createState() => _HomeopathicState();
}

class _HomeopathicState extends State<Homeopathic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(title: Text('Homeopathic')),
    );
  }
}
