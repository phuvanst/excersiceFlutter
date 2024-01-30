import 'package:flutter/material.dart';
import 'package:flutter_ex2/selectProduct.dart';
import 'package:flutter_ex2/showProduct.dart';

void main() {
  runApp(const MaterialApp(
    home: SafeArea(
        child: Scaffold(
      body: ShowProduct.empty(),
    )),
  ));
}
