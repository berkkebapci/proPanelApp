import "package:flutter/material.dart";
import 'package:propanel/gorusulecekKisi.dart';
import 'package:propanel/logo.dart';
import "package:propanel/kamera.dart";

class CepTelefonu extends StatefulWidget {
  @override
  _CepTelefonuState createState() => _CepTelefonuState();
}
String _value="+90";
class _CepTelefonuState extends State<CepTelefonu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Logo(),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Lütfen kendinize ait ve geçerli bir cep telefonu numarası giriniz.",
                style: TextStyle(fontSize: 16, color: Colors.black45),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
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
                  labelText: (" Cep Telefonu"),
                  hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                  labelStyle: TextStyle(fontSize: 14),
                  hintText: "--- --- -- --",
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan),
                  ),
                ),
                style: TextStyle(fontSize: 18),
                maxLengthEnforced: true,
                maxLength: 10,
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
                                  MaterialPageRoute(builder: (context) => GorusulecekKisi()),
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
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Kamera()),
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
      ),
    );
  }
}