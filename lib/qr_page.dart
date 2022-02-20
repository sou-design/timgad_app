import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrPage extends StatefulWidget {
  const QrPage({Key? key}) : super(key: key);

  @override
  _QrPageState createState() => _QrPageState();
}

class _QrPageState extends State<QrPage> {
  final text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(),
          QrImage(
            data: text.text,
            version: QrVersions.auto,
            size: 200.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,right: 30,left: 30),
            child: TextField(
              onSubmitted: (String value) => {
              setState(() {
              text.text = value;
              })
              },
              controller: text,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 0.5),
                ),
                border: OutlineInputBorder(),
                labelText: 'Enter desired place to visit',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
