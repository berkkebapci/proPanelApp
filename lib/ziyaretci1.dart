import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "aydinlatmaMetni2.dart";
import 'package:propanel/aydinlatmaMetni1.dart';
import 'package:propanel/kvkk.dart';
import 'logo.dart';

class Ziyaretci1 extends StatefulWidget {
  @override
  _Ziyaretci1State createState() => _Ziyaretci1State();
}

class _Ziyaretci1State extends State<Ziyaretci1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: ListView(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 15, right: 30),
              child: SizedBox(
                height: 40,
                width: 150,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icons/bayrak.jpg",
                        height: 20,
                        width: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("Türkçe (tr)"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Logo(),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text("Hoş Geldiniz",
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                  "Ziyaretçi İşlemleriniz İçin Aşağıdaki Butonları Kullanabilirsiniz.",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.cyan,
                child: Text("Ziyaretçi Kaydı",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AydinlatmaMetni1()),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.cyan,
                child: Text("Ziyaretçi Kodum Var",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AydinlatmaMetni2()),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Kvkk();
                  }));
                },
                child: Text("Kişisel Verilerin Korunması Kanunu Başvurusu",
                    style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text("bilimp.com",
                    style: TextStyle(color: Colors.black45, fontSize: 14)),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
