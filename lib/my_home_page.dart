import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  List<String> popMenu = ["M.U", "ARS", "MANCUTE", "TLINH", "MCCHUONG"];
  String urlImgs = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAKLofLrYFZtswburR9wFFje6h7tB0OuscSA&usqp=CAU";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          "Hum ni la thu 7",
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
      backgroundColor: Colors.black38,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const Text(
            "My captain Martin Odegaard <3",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontFamily: 'Dancing',
              color: Colors.red),
            textAlign: TextAlign.center,
          ),
          Image(
              image: AssetImage("assets/images/skysports-martin-odegaard-arsenal_6074824.jpg")
          ),
          const Text(
            "Hôm ni Arsenal đá",
            style: TextStyle(fontSize: 30,
            color: Colors.lime,
              fontFamily: 'Dancing'
            ),
            textAlign: TextAlign.center,
          ),
          Image(
              image: NetworkImage(urlImgs)
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              gradient: LinearGradient(
                  colors: [
                    Colors.redAccent,
                    Colors.yellowAccent,
                    Colors.deepOrange
                  ]),
              borderRadius: BorderRadius.circular(50)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.heart_broken,
                    color: Colors.redAccent,
                    size: 50,
                  ),
                  onPressed: () {
                    print("Push the Button");
                    var snackBar = new SnackBar(
                        content: Text("Hello, my name is snack bar")
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
                Icon(
                  Icons.heart_broken,
                  size: 50,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.heart_broken,
                  size: 50,
                  color: Colors.redAccent,
                )
              ],
            ),
          )

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home
              )
          ),
          BottomNavigationBarItem(
              label: "M.U",
              icon: Icon(
                  Icons.cabin
              )
          ),
          BottomNavigationBarItem(
              label: "ARSENAL",
              icon: Icon(
                  Icons.account_circle
              )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        onPressed: (){},
        child: Icon(
          Icons.add
        ),
      ),
      drawer: ListView(
        children: [
          const DrawerHeader(
              child: Text("Hello"),
            decoration: BoxDecoration(
              color: Colors.white60
            ),
          ),
          ListTile(
            title: const Text("Hello"),
            onTap: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
