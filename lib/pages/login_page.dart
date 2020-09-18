import 'package:aplikasi_toko/pages/registration_page.dart';
import 'package:aplikasi_toko/utilities/styles.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          FlareActor('assets/animation/Background.flr',animation: 'Flow', fit: BoxFit.cover),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 100.0),
              Text('Login', style: heading1),
              SizedBox(height: 20.0),
              Container(
                height: 50.0,
                color: Colors.transparent,
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: TextField(
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300.withOpacity(0.5),
                      filled: true,
                      labelText: "Nama",
                      enabled: true,
                     // enabledBorder: ,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),

                    ),
                  ),
                ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => RegistrationPage()
                  ));
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
