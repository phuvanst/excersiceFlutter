import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SelectProduct extends HookWidget {
  final Function(String) onImageSelected;
  const SelectProduct({Key? key, required this.onImageSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final image = useState('vs_red.png');
    return Scaffold(
      body: Container(
        child: Column(children: [
          Container(
            height: 170,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              children: [
                Column(
                  children: [
                    Image(
                      image: AssetImage("images/${image.value}"),
                      height: 100,
                      width: 100,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Điện thoại Vsmart Joy 3"),
                    Text("Hàng chính hãng"),
                    Text("Màu: đỏ"),
                    Text("Cung cấp bởi Tiki Tradding"),
                    Text("1.790.000"),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 583,
            width: double.infinity,
            color: Colors.grey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chọn một màu bên dưới",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      child: SizedBox(
                        height: 90,
                        width: 90,
                        child: ElevatedButton(
                            onPressed: () {
                              image.value = "vs_silver.png";
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlue.shade50,
                            ),
                            child: Text("")),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      child: SizedBox(
                        height: 90,
                        width: 90,
                        child: ElevatedButton(
                            onPressed: () {
                              image.value = "vs_red.png";
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            child: Text("")),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      child: SizedBox(
                        height: 90,
                        width: 90,
                        child: ElevatedButton(
                            onPressed: () {
                              image.value = "vs_black.png";
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Text("")),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      child: SizedBox(
                        height: 90,
                        width: 90,
                        child: ElevatedButton(
                            onPressed: () {
                              image.value = "vs_blue.png";
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 4, 56, 99),
                            ),
                            child: Text("")),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 45,
                      width: 350,
                      child: ElevatedButton(
                        onPressed: () {
                          onImageSelected(image.value);
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Xong",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
