import 'package:ddialyse/screens/const.dart';
import 'package:ddialyse/screens/welcom.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MaterialApp(
   
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: welcom(),
    ),
  ));
}
