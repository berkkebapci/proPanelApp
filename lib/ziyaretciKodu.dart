import 'package:flutter/material.dart';
import 'package:propanel/aydinlatmaMetni2.dart';
import 'package:propanel/logo.dart';
import "package:propanel/bilgilendirmeVideosu.dart";
import 'package:flutter/services.dart';

class ZiyaretciKodu extends StatefulWidget {
  @override
  _ZiyaretciKoduState createState() => _ZiyaretciKoduState();
}
String kod = "00000";
class _ZiyaretciKoduState extends State<ZiyaretciKodu> {

  final myController = TextEditingController();
  int _charCount;
  _onChanged(String value) {
    setState(() {
      _charCount = value.length;
    });
  }
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Logo(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              child: Text(
                  "Lütfen cep telefonunuza gelen ziyaretçi kodunu aşağıdaki "
                  "kutuya yazın.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16, color: Colors.black45,fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              child: TextField(
                maxLengthEnforced: true,
                controller: myController,
                textInputAction: TextInputAction.go,
                maxLength: 5,
                onChanged: _onChanged,
                autofocus: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),

                decoration: InputDecoration(
                  hintText: "00000",
                  labelText: "Ziyaretçi Kodu",
                  hintStyle: TextStyle(
                    fontSize: 16,
                  ),
                  labelStyle: TextStyle(fontSize: 14),
                ),
              ),
            ),
           // Text("length = $_charCount"),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "1",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    shape: CircleBorder(),
                    onPressed: () {
                       myController.text +=  1.toString();
                    },
                  ),
                  RaisedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "2",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    shape: CircleBorder(),
                    onPressed: () {
                      myController.text += 2.toString();
                    },
                  ),
                  RaisedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "3",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    shape: CircleBorder(),
                    onPressed: () {
                      myController.text += 3.toString();
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "4",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    shape: CircleBorder(),
                    onPressed: () {
                      myController.text += 4.toString();
                    },
                  ),
                  RaisedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "5",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    shape: CircleBorder(),
                    onPressed: () {
                      myController.text += 5.toString();
                    },
                  ),
                  RaisedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "6",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    shape: CircleBorder(),
                    onPressed: () {
                      myController.text += 6.toString();
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "7",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    shape: CircleBorder(),
                    onPressed: () {
                      myController.text += 7.toString();
                    },
                  ),
                  RaisedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "8",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    shape: CircleBorder(),
                    onPressed: () {
                      myController.text += 8.toString();
                      },
                  ),
                  RaisedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "9",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    shape: CircleBorder(),
                    onPressed: () {
                      myController.text += 9.toString();
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "0",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    shape: CircleBorder(),
                    onPressed: () {
                      myController.text += 0.toString();
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: SizedBox(
                            height: 70,
                            width: 160,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AydinlatmaMetni2()),
                                );
                              },
                              color: Colors.black26,
                              textColor: Colors.white,
                              child: Text("Geri",
                                  style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: SizedBox(
                            height: 70,
                            width: 160,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              onPressed: () {
                                myController.clear();
                              },
                              color: Colors.black26,
                              textColor: Colors.white,
                              child: Text("Temizle",
                                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: SizedBox(
                            height: 70,
                            width: 160,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BilgilendirmeVideosu()),
                                  );
                              },
                              color: Colors.cyan,
                              textColor: Colors.white,
                              child: Text("Doğrula",
                                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
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
      ),
    );
  }
}
