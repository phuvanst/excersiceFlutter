import 'package:flutter/material.dart';
import 'package:flutter_ex3/Screen1.dart';

void main() {
  runApp(const MaterialApp(
    home: SafeArea(
        child: Scaffold(
      body: Screen1(),
    )),
  ));
}
