import 'package:flutter/material.dart';
import "logo.dart";

class ZiyaretciKarti extends StatefulWidget {
  @override
  _ZiyaretciKartiState createState() => _ZiyaretciKartiState();
}

class _ZiyaretciKartiState extends State<ZiyaretciKarti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Logo(),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("Görüşme talebiniz ilgili kişiye iletilmiştir. "
                  "Ziyaretçi kartınızı Alabilirsiniz",
                style: TextStyle(fontSize: 20,color: Colors.black45,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
    ),
    );
  }
}
