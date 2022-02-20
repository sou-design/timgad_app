import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:timgad/vr.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  String res="Scan QR code";
  Barcode? result;
  QRViewController? controller;
  var once = 0;
  final Map sceneNames = {'ancient ruins':'ancient_ruins_02.glb', 'murs':'Mur2_.glb', 'tribunes':'Tribunes.glb', 'mur timgad':'murTimgad2_.glb', 'dummy':'dummy.glb', 'complete scene':''};


  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    controller!.pauseCamera();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
              overlay: QrScannerOverlayShape(
                borderColor: Theme.of(context).colorScheme.secondary,
                borderWidth: 10,
                borderLength: 20,
                borderRadius: 10,
                cutOutSize: MediaQuery.of(context).size.width * 0.8,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: (result != null)
                  ? Text(res, style :const TextStyle(color: Colors.red))
                  : const Text('Scan a code', style :TextStyle(color: Colors.black)),


            ),
          ),
        ],
      ),
    );

  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() async {
        result = scanData;
        if(result !=null){
          res="${result!.code}";
          once++;
          if (once <2) {
            if(sceneNames.keys.contains(res)){ Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => VR(path: "assets/"+sceneNames[res],title: res,)),
            );}else{res='This QR code is wrong !!!';}

          }await Future.delayed(const Duration(seconds: 2), (){});once--;

        }
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
