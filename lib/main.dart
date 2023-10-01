import 'package:flutter/material.dart';

import 'my_cinema.dart';
import 'my_classroom.dart';
import 'my_home_page.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Arsenal vo dich !!!!",
      home: MyGGClassRoom(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Raleway'
      ),
    );
  }
}
