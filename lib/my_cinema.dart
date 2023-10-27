import 'dart:async';

import 'package:flutter/material.dart';

class MyCinema extends StatefulWidget {
   MyCinema({super.key});


  @override
  State<StatefulWidget> createState() => _CreateState();
}

class _CreateState extends State<MyCinema> {
  List<String> popMenu = ["M.U", "ARS", "MANCUTE", "TLINH", "MCCHUONG"];
  String url0 = "https://m.media-amazon.com/images/M/MV5BOTkzYmMxNTItZDAxNC00NGM0LWIyODMtMWYzMzRkMjIyMTE1XkEyXkFqcGdeQXVyMTAyMjQ3NzQ1._V1_FMjpg_UX1000_.jpg";
  String url1 = "https://a.storyblok.com/f/178900/1080x1350/1844ab885f/one-piece-live-action-poster.jpg/m/filters:quality(95)format(webp)";
  String url2 = "https://posterspy.com/wp-content/uploads/2023/04/Picsart_23-04-18_06-52-22-362.jpg";

  List<String> images = [
    "assets/images/ibleue_0.png",
    "assets/images/ibleue_1.png",
    "assets/images/ibleue_2.png"
  ];

  List<String> movieNames = [
    "PAST LIVES",
    "ONE PIECE",
    "GOD OF WAR"
  ];

  ScrollController controller = ScrollController(initialScrollOffset: 0.0);
  late Timer timer;
  int curIndex = 0;

  @override
  void initState(){
    super.initState();

    controller.addListener(() {
      var index = (controller.offset / 400).round();

      if (index != curIndex) {
        setState(() {
          curIndex = index;
        });
      }
    });

    timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      setState(() {
        curIndex = (curIndex + 1) % images.length; // Get index
        moveImage();
      });
    });
  }

  void moveImage() {
    controller.animateTo(
      curIndex * MediaQuery.of(context).size.width,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.black38,
                    Colors.white54,
                    Colors.blueGrey
                  ])
          ),
        ),


        title: const Text(
          "Cinema slide",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return popMenu.map((e) {
                return PopupMenuItem(child: Text(e));
              }).toList();
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.white,
                  width: 1
                )
              )
            ),
            child: const Text(
              "PHIM HOT",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(5),
            height: 450,
            decoration: const BoxDecoration(
              color: Colors.white
            ),
            child: ListView.builder(
              controller: controller,
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index){
                return Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      child: Image(
                        image: NetworkImage(images[index]),
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      height: 50,
                      child: Text(
                        movieNames[index],
                        style: TextStyle(
                          color: Colors.black54, fontSize: 25, fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ]
                );
              },
            ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.map((image) {
                int index = images.indexOf(image);
                return Container(
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == curIndex ? Colors.blue : Colors.grey
                    )
                );
              }).toList(),
            ),
          ],
        )
      ]
      ),
    );
  }
}
