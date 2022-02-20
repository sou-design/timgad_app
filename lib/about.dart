import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: const Center(
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                'Timgad surnommée la Pompéi d’Afrique est une ville romaine vieille de 2000 ans. Elle doit son surnom à son incroyable état de conservation. '
                    '\n Sa visite est un véritable voyage dans le temps.'
                    '\n\n Notre application a pour but de faire voyager l utilisateur dans le site historique de TIMGAD en utilisation la réalité augmenté'
                    '\n\n Le projet a été réalisé par un groupe de 6 etudiants :'
                    '\n\n -Merbouti Souad\n-Chemcham Ahcene\n-Seddiki Tesnyme\n-Rabie Zemmour\n-Doual Tahar\n-Benlarbi Nesrine',
                style: TextStyle(
                  color: Color(0xFFAE431E),
                  fontSize: 16,
                )),
          ),
        ),
      ),
    );
  }
}
