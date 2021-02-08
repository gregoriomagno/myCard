import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class RaisedButtonContatos extends StatelessWidget {
  final dynamic icon;
  final String texto;
  final String redirecionar;
  RaisedButtonContatos(this.texto, this.icon, this.redirecionar);
  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 2),
                  child: SizedBox(
                    height: 55.0,
                    child: RaisedButton(
                        onPressed: () {
                           launch(redirecionar);
                        },
                        color: Colors.white,
                        
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 10),
                              child: Icon(
                                icon,
                                size: 25.0,
                                color: Colors.tealAccent[700],
                              ),
                            ),
                            Text(texto)
                          ],
                        )),
                  ),
                );
  }
}
