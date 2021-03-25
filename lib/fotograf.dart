import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:propanel/cepTelefonu.dart';
import 'package:propanel/ziyaretciKarti.dart';
import 'kamera.dart';
import 'logo.dart';

class Fotograf extends StatefulWidget {
  @override
  _FotografState createState() => _FotografState();
}

bool checkedValue = false;

class _FotografState extends State<Fotograf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Logo(),
          Text(
            "Güvenlik fotoğrafı için gülümseyiniz.",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black45,
                fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: FittedBox(
              child: Container(
                color: Colors.red,
                width: 300,
                height: 200,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  /*
                CheckboxListTile(
                  value: checkedValue,
                  onChanged: (newValue){
                    setState(() {
                      checkedValue = newValue;
                    });
                  },
                ),*/
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left:8),
                      child: Text(
                        "Fotoğrafsız devam etmek istiyorum.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black45,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
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
                              MaterialPageRoute(
                                  builder: (context) => CepTelefonu()),
                            );
                          },
                          child: Text("Geri",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
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
                              MaterialPageRoute(builder: (context) => Kamera()),
                            );
                          },
                          child: Text("Yeniden Çek",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          color: Colors.redAccent,
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
                              MaterialPageRoute(
                                  builder: (context) => ZiyaretciKarti()),
                            );
                          },
                          child: Text("Kabul Et",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
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
        ],
      ),
    );
  }
}
