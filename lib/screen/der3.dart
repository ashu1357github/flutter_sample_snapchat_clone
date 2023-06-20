import 'package:flutter/material.dart';

class der3 extends StatefulWidget {
  const der3({super.key});

  @override
  State<der3> createState() => _der3State();
}

class _der3State extends State<der3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: Colors.cyan,
      height: MediaQuery.of(context).size.height,
    );
  }
}
