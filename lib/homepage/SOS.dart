import 'package:flutter/material.dart';

class SoS extends StatefulWidget {
  const SoS({Key? key}) : super(key: key);

  @override
  _SoSState createState() => _SoSState();
}

class _SoSState extends State<SoS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: Center(
        child: Text("This page will be redirected to SOS call",
            style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black38,
                fontWeight: FontWeight.bold,
                fontSize: 18.0)),
      ),
    );
  }
}
