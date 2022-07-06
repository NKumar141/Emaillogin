import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../src/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_options/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      name: 'SecondaryApp',
      options: const FirebaseOptions(
        apiKey: '...',
        appId: '...',
        messagingSenderId: '...',
        projectId: '...',
      ));
  runApp(app());
}
