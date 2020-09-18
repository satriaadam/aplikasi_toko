import 'package:aplikasi_toko/utilities/styles.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: <Widget>[
          FlareActor('assets/animation/Background.flr',animation: 'Shrink', fit: BoxFit.cover,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 100.0),
              Text('Registrasi', style: heading1),
              SizedBox(height: 20.0),
              Container(
                height: 50.0,
                color: Colors.transparent,
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    prefixIcon: Icon(MdiIcons.alienOutline),
                    fillColor: Colors.grey.shade300.withOpacity(0.5),
                    filled: true,
                    labelText: "Nama",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
