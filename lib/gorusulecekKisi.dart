import "package:flutter/material.dart";
import 'package:propanel/cepTelefonu.dart';
import 'package:propanel/aydinlatmaMetni1.dart';
import 'package:propanel/logo.dart';

class GorusulecekKisi extends StatefulWidget {
  @override
  _GorusulecekKisiState createState() => _GorusulecekKisiState();
}

class _GorusulecekKisiState extends State<GorusulecekKisi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Logo(),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text("Lütfen görüşmek istediğiniz kişiyi seçin.",
                  style: TextStyle(fontSize: 14, color: Colors.black45,fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: TextField(
              autofocus: true,
              decoration: InputDecoration(
                labelText: ("Görüşmek İstediğiniz Kişi"),
                hintText: ("Görüşmek İstediğiniz Kişi"),
                hintStyle: TextStyle(fontSize: 14),
                labelStyle: TextStyle(fontSize: 12),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyan),
                ),
              ),
              style: TextStyle(fontSize: 14),
            ),
          ),
          Expanded(
            child: Align(
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: SizedBox(
                          height: 70,
                          width: 160,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => AydinlatmaMetni1()),
                              );
                            },
                            child: Text("Geri",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold)),
                            color: Colors.black45,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: SizedBox(
                          height: 70,
                          width: 160,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => CepTelefonu()),
                              );
                            },
                            child: Text("Devam",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold)),
                            color: Colors.cyan,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
