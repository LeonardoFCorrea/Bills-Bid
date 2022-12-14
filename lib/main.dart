import 'package:bills_bid/components/NavigationSystem.dart';
import 'package:bills_bid/createGroup.dart';
import 'package:bills_bid/home.dart';
import 'package:bills_bid/payment.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Poppins'),
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
