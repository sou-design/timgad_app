import 'package:flutter/material.dart';
import 'home_page.dart';
void main() => runApp(Infos());

class Infos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InfosPage(),
    );
  }
}
class InfosPage extends StatefulWidget {
  @override
  _InfosPageState createState() => _InfosPageState();
}

class _InfosPageState extends State<InfosPage> {
  final text = TextEditingController();
  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp
      (home: Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image4.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black,
                  ],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(60.0),
              alignment: Alignment.center,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                controller: text,
                decoration: InputDecoration(
                  errorText: _validate ? 'This field Can\'t Be Empty' : null,
                  enabledBorder: const OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.white, width: 0.5),
                  ),
                  border: const OutlineInputBorder(),
                  labelText: 'Please fill your name',
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      text.text.isEmpty ? _validate = true : _validate = false;
                    });
                    if (_validate == false) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondPage(text: text.text)),
                      );
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 150.0),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xffAE431E),
                            Color(0xffD06224),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white, width: 2.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(5, 5),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          'Enter !',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
