import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyMark extends StatefulWidget {
  const MyMark({super.key});

  @override
  State<MyMark> createState() => _MyMarkState();
}

class _MyMarkState extends State<MyMark> {
  var soThuNhat = new TextEditingController();
  var soThuHai = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            "Tong diem",
            style: TextStyle(fontSize: 30),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: TextFormField(
              controller: soThuNhat,
              decoration: InputDecoration(
                hintText: "Số thứ nhất"
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow("[0-9]")
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: TextFormField(
              controller: soThuHai,
              decoration: InputDecoration(
                  hintText: "Số thứ hai"
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r"[0-9]"))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: (){
                  var tong = soThuNhat.text + soThuHai.text;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Tong hai so: ${tong}"))
                  );
                },
                child: Text("Cộng)"),
              ),
            ),
        ],
      )
    );
  }
}
