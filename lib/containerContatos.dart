import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class ContainerContatos extends StatelessWidget {
  final dynamic icon;
  final String texto;
  final String redirecionar;
  ContainerContatos(this.texto, this.icon, this.redirecionar);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          launch(redirecionar);
        },
        child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 2),
            child: Container(
              height: 55.0,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      icon,
                      size: 25.0,
                      color: Colors.tealAccent[700],
                    ),
                  ),
                  Text(texto)
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(const Radius.circular(10.0))),
            )));
  }
}
