import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Expanded(
              child: Image.asset(
                'assets/icons/teracitylogo.png',
                width: 260,
                height: 90,
              )),
        ),
    );
  }
}
