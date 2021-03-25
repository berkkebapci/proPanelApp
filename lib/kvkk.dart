import "package:flutter/material.dart";
import 'package:propanel/ziyaretci1.dart';

class Kvkk extends StatefulWidget {
  @override
  _KvkkState createState() => _KvkkState();
}
String _value="+90";
String _value1="E-posta";
class _KvkkState extends State<Kvkk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text("Kişisel Verilerin Korunması Kanunu Başvurusu",
                  style:TextStyle(fontSize: 18,color: Colors.black45,fontWeight: FontWeight.bold)
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: ("Ad"),
                    hintText: ("Ad"),
                    hintStyle: TextStyle(fontSize: 14),
                    labelStyle: TextStyle(fontSize: 14),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                  ),
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: ("Soyad"),
                    hintText: ("Soyad"),
                    hintStyle: TextStyle(fontSize: 14),
                    labelStyle: TextStyle(fontSize: 14),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                  ),
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 35,top: 5,right: 15,bottom: 5),
                child: TextField(
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        "assets/icons/bayrak.jpg",
                        height: 7,
                        width: 15,
                      ),
                    ),
                    prefix: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: DropdownButton(
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text("TR +90"),
                            value: "+90",
                          ),
                          DropdownMenuItem(
                            child: Text("AZ +994"),
                            value: "+994",
                          ),
                          DropdownMenuItem(
                            child: Text("FR +33"),
                            value: "+33",
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                    ),
                    //prefixText: "TR +90",
                    labelText: (" Cep Telefonu"),
                    hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                    labelStyle: TextStyle(fontSize: 14),
                    hintText: "--- --- -- --",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                  ),
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: ("TC Kimlik No"),
                    hintText: ("TC Kimlik No"),
                    hintStyle: TextStyle(fontSize: 14),
                    labelStyle: TextStyle(fontSize: 14),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                  ),
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: ("Pasaport No"),
                    hintText: ("Pasaport No"),
                    hintStyle: TextStyle(fontSize: 14),
                    labelStyle: TextStyle(fontSize: 14),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                  ),
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: ("E-Posta"),
                    hintText: ("E-Posta"),
                    hintStyle: TextStyle(fontSize: 14),
                    labelStyle: TextStyle(fontSize: 14),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                  ),
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: ("KEP Adresi"),
                    hintText: ("KEP Adresi"),
                    hintStyle: TextStyle(fontSize: 14),
                    labelStyle: TextStyle(fontSize: 14),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                  ),
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: ("Adres"),
                    hintText: ("Adres"),
                    hintStyle: TextStyle(fontSize: 14),
                    labelStyle: TextStyle(fontSize: 14),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                  ),
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: ("Açıklama"),
                    hintText: ("Açıklama"),
                    hintStyle: TextStyle(fontSize: 14),
                    labelStyle: TextStyle(fontSize: 14),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                  ),
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                child: DropdownButton(
                  value: _value1,
                  items: [
                    DropdownMenuItem(
                      child: Text("E-posta"),
                      value: "E-posta",
                    ),
                    DropdownMenuItem(
                      child: Text("Adres"),
                      value: "Adres",
                    ),
                    DropdownMenuItem(
                      child: Text("Elden"),
                      value: "Elden",
                    ),
                  ],
                  onChanged: (value1) {
                    setState(() {
                      _value1 = value1;
                    });
                  },
                  style: TextStyle(fontSize: 14,color: Colors.black87),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 30),
                          child: SizedBox(
                            height: 80,
                            width: 160,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Ziyaretci1()),
                                );
                              },
                              color: Colors.black26,
                              textColor: Colors.white,
                              child:
                                  Text("Geri", style: TextStyle(fontSize: 22)),
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
                              horizontal: 15, vertical: 30),
                          child: SizedBox(
                            height: 80,
                            width: 160,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Ziyaretci1()),
                                );
                              },
                              color: Colors.cyan,
                              textColor: Colors.white,
                              child: Text("Kaydet",
                                  style: TextStyle(fontSize: 22)),
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
