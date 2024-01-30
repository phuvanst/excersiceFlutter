import "package:flutter/material.dart";

class Ex1 extends StatefulWidget {
  const Ex1({Key? key}) : super(key: key);

  @override
  _Ex1State createState() => _Ex1State();
}

class _Ex1State extends State<Ex1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[300],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 150,
          ),
          const Image(
            image: AssetImage("images/Ellipse.png"),
            width: 150,
            height: 150,
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: SizedBox(
              height: 25,
              child: Text(
                "GROW",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: SizedBox(
              height: 25,
              child: Text(
                "YOUR BUSINESS",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
                "We will help you to grow your business using online server",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
                width: 150,
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            const Color.fromARGB(255, 219, 198, 9))),
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 40,
                width: 150,
                child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        const Color.fromARGB(255, 219, 198, 9),
                      ),
                    ),
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
