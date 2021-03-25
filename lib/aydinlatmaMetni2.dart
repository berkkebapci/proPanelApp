import 'package:flutter/material.dart';
import 'package:propanel/ziyaretci1.dart';
import 'package:propanel/ziyaretciKodu.dart';
import 'logo.dart';

class AydinlatmaMetni2 extends StatefulWidget {
  @override
  _AydinlatmaMetni2State createState() => _AydinlatmaMetni2State();
}

class _AydinlatmaMetni2State extends State<AydinlatmaMetni2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Logo(),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text("Aydınlatma Metni",
                  style: TextStyle(
                      fontSize: 22, color: Colors.black45,fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                          "* Bu Panel aracılığı ile sizden aldığımız (Ad, Soyad, Firma, Cep Telefonu, Fotoğraf) ve ortak "
                          "alanlarda mevcut kamera sistemlerinden oluşan kişisel verileriniz ziyaret organizasyonu ve güvenliğinizi "
                          "sağlamak aracılığıyla kullanılacaktır.\n"
                          "* Hiçbir şekilde 3. Kişilerle paylaşılmayacak, ayrıca ziyaret sıklığınız 1 yıldan uzunsa otomatik olarak anonimleştirilecektir\n"
                          "* Dilerseniz ziyaretiniz sonlandığında bu panel üzerinden kişisel verilerinizi anonimleştirme talebi yapabilirsiniz. "
                          "İrtibat kişimiz Nihal Bilal ve iletişim bilgileri (nihal.bilal@teracity.com.tr ve 0850 222 27 46) \n"
                          "* Bu ekranı onaylamakla kişisel verilerinizin işlenmesi için açık rızanız olduğu kabul ve kayıt edilecektir.\n "
                          "* Kişisel veri kaydı yapmaksızın görüşmenizi gerçekleştirme talebiniz varsa lütfen personelimize başvurunuz.\n "
                          "* 5746 Sayılı AR-GE Merkezi yasasına tabi bir AR-GE şirketi olmamız sebebiyle Veri güvenliği bizim için önemlidir. "
                          "Bu nedenle ziyaretiniz esnasında elde edeceğiniz bilgileri paylaşmayacağınızı ve şirketimizin izni olmaksızın "
                          "sesli yada görüntülü kayıt yapmayacağınızı kabul etmiş bulunmaktasınız.\n"
                          "* Ziyaret Kurallarımıza gösterdiğiniz hassasiyet için teşekkür ederiz. ",
                      style: TextStyle(fontSize: 14, color: Colors.black45),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
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
                                builder: (context) => Ziyaretci1()),
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
                            MaterialPageRoute(
                                builder: (context) => ZiyaretciKodu()),
                          );
                        },
                        child: Text("Okudum",
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
        ],
      ),
    );
  }
}
