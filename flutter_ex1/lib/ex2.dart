import "package:flutter/material.dart";

class Ex2 extends StatefulWidget {
  const Ex2({Key? key}) : super(key: key);

  @override
  _Ex2State createState() => _Ex2State();
}

class _Ex2State extends State<Ex2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 121, 177, 223),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        SizedBox(
          height: 30,
        ),
        Image(
          image: AssetImage("images/lock.png"),
          width: 150,
          height: 150,
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Text(
            "FORGET PASSWORD",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "PASSWORD",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Text(
            "Provide your account’s email for which you want to reset your password",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Column(
          children: [
            Container(
              height: 50,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  prefixIcon: Icon(Icons.email),
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Column(
          children: [
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.yellow,
                    // set size cho nút minimumSize: Size(300, 50)
                    padding: EdgeInsets.all(10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    //đổ bóng, chỉnh bóng sẽ rộng hơn
                    elevation: 8,
                    shadowColor: Colors.blue.withOpacity(0.5),
                    //tạo viền
                    side: BorderSide(
                      width: 2,
                      color: Colors.blue.shade50,
                    )),
                onPressed: () {},
                label: Text(
                  "Next",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                icon: Icon(
                  Icons.money,
                  size: 30,
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}
