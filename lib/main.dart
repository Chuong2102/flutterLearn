import 'package:flutter/material.dart';
import 'package:okay/posts/post1.dart';

import 'my_cinema.dart';
import 'my_classroom.dart';
import 'my_form.dart';
import 'my_home_page.dart';
import 'my_insta.dart';
import 'my_mark.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Arsenal vo dich !!!!",
      home: My_Instagram(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Raleway'
      ),
    );
  }
}
