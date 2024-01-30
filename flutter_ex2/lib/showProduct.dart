import 'package:flutter/material.dart';
import 'package:flutter_ex2/selectProduct.dart';

class ShowProduct extends StatefulWidget {
  final String selectedImage;

  const ShowProduct({Key? key, required this.selectedImage}) : super(key: key);
  const ShowProduct.empty({Key? key})
      : this(selectedImage: 'vs_blue.png', key: key);

  @override
  _ShowProductState createState() => _ShowProductState();
}

class _ShowProductState extends State<ShowProduct> {
  String get selectedImage => widget.selectedImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                height: 400,
                width: double.infinity,
                child: Image(
                  image: AssetImage("images/$selectedImage"),
                  width: 350,
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
              child: Text("Điện thoại Vsmart Joy 3 - Hàng chính hãng"),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade300,
                        size: 24,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade300,
                        size: 24,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade300,
                        size: 24,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade300,
                        size: 24,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade300,
                        size: 24,
                      ),
                    ],
                  ),
                ),
                const Text("Xem 828 đánh giá"),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
              child: Row(
                children: [
                  Text(
                    "1.790.000 đ",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "1.790.000 đ",
                    style: TextStyle(
                        fontSize: 16, decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
              child: Row(
                children: [
                  Text(
                    "Ở ĐÂU RẺ HƠN HOÀN TIỀN",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  Icon(
                    Icons.help,
                    size: 18,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
              child: SizedBox(
                height: 35,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (content) => SelectProduct(
                            onImageSelected: (selectedImage) {
                              Navigator.pop(context, selectedImage);
                            },
                          ),
                        ),
                      ).then((selectedImage) {
                        if (selectedImage != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShowProduct(
                                      selectedImage: selectedImage)));
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: Size(350.0, 35.0)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "4 MÀU-CHỌN MÀU",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                        Icon(
                          Icons.chevron_right,
                          size: 24,
                          color: Colors.black,
                        ),
                      ],
                    )),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            maximumSize: Size(350.0, 50.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        child: const Text(
                          "CHỌN MUA",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )),
                  )
                ],
              ),
            )
          ]),
    );
  }
}
