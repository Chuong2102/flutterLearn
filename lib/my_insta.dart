import 'package:flutter/material.dart';
import 'package:okay/posts/post1.dart';
import 'package:okay/posts/post2.dart';

class My_Instagram extends StatefulWidget {
  const My_Instagram({super.key});

  @override
  State<My_Instagram> createState() => _My_InstagramState();
}

class _My_InstagramState extends State<My_Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Row(
              children: [
                Text(
                  "Instagram",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Billabong',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                PopupMenuButton<int>(
                  icon: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Colors.white,
                              size: 32,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  color: Colors.black45,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Điều chỉnh độ cong của góc
                  ),
                  padding: EdgeInsets.all(5),
                  offset: Offset(-100, 46),
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
                    PopupMenuItem<int>(
                      value: 0,
                      child: Row(
                        children: [
                          Text('Đang theo dõi',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900
                              )),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.supervisor_account_rounded,
                                  color: Colors.white,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem<int>(
                      value: 1,
                      child: Row(
                        children: [
                          Text('Yêu thích',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w900
                            ),),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.star_border,
                                  color: Colors.white,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  onSelected: (int value) {
                    if (value == 0) {
                      // Xử lý khi chọn Thư mục 1
                    } else if (value == 1) {
                      // Xử lý khi chọn Thư mục 2
                    }
                  },
                )
              ],
            ),
            actions: [
              IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                    size: 30,
                  )
              ),
              IconButton(
                  onPressed: (){},
                icon: ClipOval(
                  child: Image.asset(
                    "assets/images/messenger.png",
                    height: 32,
                    width: 32,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ]
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Stories
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
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white10,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage("assets/images/avatar.png"),
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                                Positioned(
                                  bottom: 15,
                                  right: 15,
                                  child: Container(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue, // Màu nền xanh
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 5.0,
                                      ),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        // Xử lý sự kiện khi biểu tượng "Add" được nhấn
                                      },
                                      child: Icon(
                                        Icons.add,
                                        size: 24,
                                        color: Colors.white, // Màu biểu tượng trắng
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Container(
                              height: 30,
                              width: 100,
                              child: const Text(
                                "black_cat11",
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
                              child: const CircleAvatar(
                                radius: 40, // Image radius
                                backgroundImage: AssetImage('assets/images/ibleue_1.png'),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 100,
                              child: const Text(
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
                              child: const CircleAvatar(
                                radius: 40, // Image radius
                                backgroundImage: AssetImage('assets/images/skysports-martin-odegaard-arsenal_6074824.jpg'),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 100,
                              child: const Text(
                                "Odegaard",
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
                                      color: Colors.grey,
                                      width: 4.0
                                  )
                              ),
                              child: const CircleAvatar(
                                radius: 40, // Image radius
                                backgroundImage: AssetImage('assets/images/rice_3.jpg'),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 100,
                              child: const Text(
                                "declan_rice",
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

              ),
              // Posts
              Column(
                children: [
                  Post1(),
                  Post2(),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 32,
          backgroundColor: Colors.black,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home,
                color: Colors.white,
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search,
                color: Colors.white,
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.add_box,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/real.png'),
                size: 32,
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




