import 'package:bills_bid/components/NavigationSystem.dart';
import 'package:bills_bid/createGroup.dart';
import 'package:bills_bid/home.dart';
import 'package:bills_bid/test.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Poppins'),
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
