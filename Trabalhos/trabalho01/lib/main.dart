import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Leonardo Heppe dos Santos
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Trabalho 1",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Tela de login",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontStyle: FontStyle.normal,
              decoration: TextDecoration.none,
            ),
          ),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Container(
          padding: EdgeInsets.only(
            top: 60,
            left: 40,
            right: 40,
          ),
          color: Colors.white60,
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset("logo.png"),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Digite seu email e senha",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.none,
                ),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Digite seu email.",
                ),
              ),
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Digite sua senha.",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // ignore: deprecated_member_use
              Container(
                color: Colors.pinkAccent,
                padding: EdgeInsets.only(
                  top: 3,
                  bottom: 3,
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Logar",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      decoration: TextDecoration.none,
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
