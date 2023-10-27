import 'package:flutter/material.dart';

class Post1 extends StatefulWidget {
  const Post1({super.key});

  @override
  State<Post1> createState() => _Post1State();
}

class _Post1State extends State<Post1> {
  List<String> images = [
    "assets/images/ibleue_0.png",
    "assets/images/ibleue_1.png",
    "assets/images/ibleue_2.png"
  ];

  ScrollController controller = ScrollController(initialScrollOffset: 0.0);
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
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.redAccent,
                        width: 1.0
                    )
                ),
                child: CircleAvatar(
                  radius: 20, // Image radius
                  backgroundImage: AssetImage("assets/images/ibleue_1.png"),
                ),
              ),
              Text(
                "ilbleue",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
              Spacer(),
              IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.more,
                    color: Colors.white,
                  )
              )
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 610,
            child: ListView.builder(
              controller: controller,
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index){
                return Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 600,
                        child: Image(
                          image: AssetImage(images[index]),
                          fit: BoxFit.fill,
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
                      width: 5,
                      height: 5,
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
    );
  }
}
