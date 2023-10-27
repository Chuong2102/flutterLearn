import 'package:flutter/material.dart';

class My_Instagram extends StatelessWidget {
  const My_Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Instagram",
          style: TextStyle(
              color: Colors.white,
            fontFamily: 'Dancing',
            fontWeight: FontWeight.bold,
            fontSize: 32
          ),
        ),
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 20,
                )
            )
          ]
      ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: const BoxDecoration(
                  color: Colors.black
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      // List story
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.redAccent,
                                width: 4.0
                              )
                            ),
                            child: CircleAvatar(
                              radius: 40, // Image radius
                              backgroundImage: NetworkImage('https://mcdn.coolmate.me/image/March2023/meme-meo-cute-hai-huoc-1297_599.jpg'),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            child: Text(
                              "ilbleue",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15, fontWeight: FontWeight.normal
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.redAccent,
                                    width: 4.0
                                )
                            ),
                            child: CircleAvatar(
                              radius: 40, // Image radius
                              backgroundImage: NetworkImage('https://mcdn.coolmate.me/image/March2023/meme-meo-cute-hai-huoc-1297_599.jpg'),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            child: Text(
                              "ilbleue",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15, fontWeight: FontWeight.normal
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),

            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 32,
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
                  color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ClipOval(
              child: Image.asset(
                "assets/images/avatar.png",
                height: 32,
                width: 32,
                fit: BoxFit.cover,
                ),
              ),
              label: '',
            ),
          ],
        )
    );
  }
}
