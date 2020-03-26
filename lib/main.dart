import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'dart:convert';
import 'package:sharemycartflutter/views/home/home_view.dart';
import 'package:firebase/firebase.dart' as firebase;

import '.env.dart' as env;

void main() {
  if (firebase.apps.isEmpty) {
    Map<String, String> cred = json.decode(env.environment.toString());
    firebase.initializeApp(
    apiKey: cred['apiKey'],
    authDomain: cred['authDomain'],
    databaseURL: cred['databaseURl'],
    projectId: cred['projectId'],
    storageBucket: cred['storageBucket'],
    messagingSenderId: cred['messagingSenderId'],
    appId: cred['appId'],
    measurementId: cred['measurementId']     
  ); 
  firebase.analytics();
  }

  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold();
  }
}
