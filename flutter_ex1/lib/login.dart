import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          const Row(
            children: [
              SizedBox(
                width: 90,
                child: Text("UserName:",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                    )),
              ),
              Text(
                "NguyenVanPhu",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w100,
                    color: Colors.green),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 90,
                child: Text("Email:",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                    )),
              ),
              Text(
                "phunguyeniuh@gmail.com",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w100,
                    color: Colors.green),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                      child: Text(
                        "Xác nhận",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ))),
            ],
          )
        ],
      ),
    );
  }
}
