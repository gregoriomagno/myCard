import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import './RaisedButtonContatos.dart';

void main() {
  runApp(MaterialApp(home: MyCard()));
}

class MyCard extends StatelessWidget {
  final String _textoLigar = "tel:+5586994333145";
  final String _textoEmail = "mailto:magno8phb@gmail.com?subject=";
  final String _textoGithub = "https://github.com/gregoriomagno";
  final String _textoLinkedin = "https://www.linkedin.com/in/grmagno/";

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            color: Colors.tealAccent[700],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 140.0,
                  height: 140.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("images/FotoCard.jpeg"),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Gregorio Magno',
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Text(
                  'Desenvolvedor Flutter',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                RaisedButtonContatos(
                    '+55 86 994333145', Icons.call, _textoLigar),
                RaisedButtonContatos(
                    'magno8phb@gmail.com', Icons.email, _textoEmail),
                RaisedButtonContatos(
                    'github.com/gregoriomagno', AntDesign.github, _textoGithub),
                RaisedButtonContatos('linkedin.com/in/grmagno',
                    AntDesign.linkedin_square, _textoLinkedin),
              ],
            )));
  }
}
