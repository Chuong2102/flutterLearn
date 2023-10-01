import 'package:flutter/material.dart';

class MyCinema extends StatelessWidget {
   MyCinema({super.key});

  List<String> popMenu = ["M.U", "ARS", "MANCUTE", "TLINH", "MCCHUONG"];
  String url0 = "https://m.media-amazon.com/images/M/MV5BOTkzYmMxNTItZDAxNC00NGM0LWIyODMtMWYzMzRkMjIyMTE1XkEyXkFqcGdeQXVyMTAyMjQ3NzQ1._V1_FMjpg_UX1000_.jpg";
  String url1 = "https://a.storyblok.com/f/178900/1080x1350/1844ab885f/one-piece-live-action-poster.jpg/m/filters:quality(95)format(webp)";
  String url2 = "https://posterspy.com/wp-content/uploads/2023/04/Picsart_23-04-18_06-52-22-362.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(

              gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.white54,
                    Colors.blueGrey
                  ])
          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)
            )
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
              return popMenu.map((e){
                return PopupMenuItem(child: Text(e));
              }).toList();
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: 300,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(
              width: 400,
              height: 300,
              child: Image(
                  image: NetworkImage(url0),
                  fit: BoxFit.contain,
                ),
            ),
            SizedBox(
              width: 400,
              height: 300,
              child: Image(
                image: NetworkImage(url1),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              width: 400,
              height: 300,
              child: Image(
                image: NetworkImage(url2),
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
