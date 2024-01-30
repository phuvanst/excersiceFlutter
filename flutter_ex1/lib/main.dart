import 'package:flutter/material.dart';
import 'package:flutter_ex1/ex1.dart';
import 'package:flutter_ex1/ex2.dart';
import 'package:flutter_ex1/ex3.dart';
import 'package:flutter_ex1/login.dart';

void main() {
  runApp(const MaterialApp(
    home: SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.blue,
        //   title: const Text("Login"),
        // ),
        // body: const Center(child: Text("Hello")),
        body: Ex3(),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
