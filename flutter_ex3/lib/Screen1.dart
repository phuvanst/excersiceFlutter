import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(228, 217, 197, 10),
      child: Column(children: [
        Container(
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Login"),
              ],
            )),
        Container(
          height: 150,
          child: Column(children: []),
        )
      ]),
    );
  }
}
