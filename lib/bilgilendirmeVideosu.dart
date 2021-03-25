import "package:flutter/material.dart";
import 'package:propanel/kamera2.dart';
import 'package:propanel/logo.dart';
import 'package:propanel/ziyaretciKodu.dart';


class BilgilendirmeVideosu extends StatefulWidget {
  @override
  _BilgilendirmeVideosuState createState() => _BilgilendirmeVideosuState();
}

class _BilgilendirmeVideosuState extends State<BilgilendirmeVideosu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Logo(),
        SizedBox(
          height: 240,
          width: 360,
          child: Card(
            child: Center(child: Text("Video",style: TextStyle(fontSize: 30),)),
            color: Colors.red,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                textColor: Colors.white,
                color: Colors.cyan,
                child: Text("Geri",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ZiyaretciKodu()),
                    );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                textColor: Colors.white,
                color: Colors.cyan,
                child: Text("İleri",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Kamera2()),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
