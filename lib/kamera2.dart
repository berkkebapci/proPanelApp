import "package:flutter/material.dart";
import 'dart:ui' as ui;
import "dart:html";

class Kamera2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: true,
    home: WebcamPage(),
  );
}
class WebcamPage extends StatefulWidget {
  @override
  _WebcamPageState createState() => _WebcamPageState();
}

class _WebcamPageState extends State<WebcamPage> {

  // Webcam widget to insert into the tree
  Widget _webcamWidget;
  // VideoElement
  VideoElement _webcamVideoElement;
  var leftVideo = document.getElementById('leftVideo');
  var rightVideo = document.getElementById('rightVideo');

  @override
  void initState() {
    super.initState();
    // Create a video element which will be provided with stream source
    _webcamVideoElement = VideoElement();
    // Register an webcam

    ui.platformViewRegistry.registerViewFactory('webcamVideoElement', (int viewId) => _webcamVideoElement);
    // Create video widget
    _webcamWidget = HtmlElementView(key: UniqueKey(),viewType: "webcamVideoElement");
    // Access the webcam stream
    window.navigator.getUserMedia(video: true).then((MediaStream stream) {
      _webcamVideoElement.srcObject = stream;
    });
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(top: 15)),
          Text(
            'Güvenlik Fotoğrafı İçin Gülümseyiniz',
            style: TextStyle(fontSize: 25),
          ),
          Expanded(
              child: Container(
                  width: 750,
                  height: 500,
                  child: _webcamWidget
              )
          ),
        ],
      ),
    ),
    floatingActionButton: Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 80,
        width: 80,
        child: FloatingActionButton(
          onPressed: () {
            _webcamVideoElement.play();
            _webcamVideoElement.captureStream();
          },
          tooltip: "Fotoğraf Çek",
          child: Icon(Icons.camera_alt,size: 30),
        ),
      ),
    ),
  );
}