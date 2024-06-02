import 'package:flutter/material.dart';
import 'dart:async';

import 'package:qr_example/main.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => MyHomePage(title: 'Qr Generator & Scanner',)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Replace with your application's logo or image file
            Image.asset('assets/logo.png'),
            SizedBox(height: 24),
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('Welcome to QR Generator App', style: TextStyle(fontSize: 24.0)),
          ],
        ),
      ),
    );
  }
}



