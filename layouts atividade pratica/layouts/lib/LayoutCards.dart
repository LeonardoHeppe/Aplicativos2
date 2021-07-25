import 'package:flutter/material.dart';
import 'Card.dart';

class LayoutCard extends StatefulWidget {
  @override
  _LayoutCardState createState() => _LayoutCardState();
}

class _LayoutCardState extends State<LayoutCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personagens de Stranger Things",
            style: TextStyle(color: Colors.red)),
        backgroundColor: Colors.black,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Image.asset("imagens/dustin.jpg"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      //ignore: deprecated_member_use
                      child: RaisedButton(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Ir",
                          style: TextStyle(fontSize: 10),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Cards("Dustin", "imagens/dustin.jpg")));
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Image.asset("imagens/11.jpg"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      //ignore: deprecated_member_use
                      child: RaisedButton(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Ir",
                          style: TextStyle(fontSize: 10),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Cards("Onze", "imagens/11.jpg")));
                        },
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
