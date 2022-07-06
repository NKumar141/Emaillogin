import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FlatButton(
              child: Text('LogOut'),
              onPressed: () {
                auth.signOut();
              })),
    );
  }
}
