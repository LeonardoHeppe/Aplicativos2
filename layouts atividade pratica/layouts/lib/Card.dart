import 'package:flutter/material.dart';
import 'LayoutCards.dart';

class Cards extends StatefulWidget {
  String nome, src;
  Cards(this.nome, this.src);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.nome, style: TextStyle(color: Colors.red)),
          backgroundColor: Colors.black),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              child: Image.asset(widget.src),
            ),
            SizedBox(
              height: 10,
            ),
            // ignore: deprecated_member_use
            Container(
              color: Colors.black,
              padding: EdgeInsets.only(
                top: 3,
                bottom: 3,
              ),
              child: FlatButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => LayoutCard()));
                },
                child: Text(
                  "Voltar",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontStyle: FontStyle.normal,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
