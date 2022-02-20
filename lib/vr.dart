import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';


class VR extends StatefulWidget {
  final String path;
  final String title;
  const VR({Key? key, required this.path, required this.title}) : super(key: key);

  @override
  Vr createState() => Vr();
}

class Vr extends State<VR> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BabylonJSViewer(
        src: widget.path, // a bundled asset file
      ),
    );
  }
}

