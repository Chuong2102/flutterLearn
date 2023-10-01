import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyGGClassRoom extends StatelessWidget {
  MyGGClassRoom({super.key});

  List<String> popUpMenuItem = ["Làm mới", "Gửi phản hồi cho Google"];
  List<String> popUpMenuClass = ["Hủy đăng ký"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shape: const Border(
          bottom: BorderSide(
            color: Colors.black45
          )
        ),
        title: const Text(
          "Google Lớp học",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        actions: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.png'),
            minRadius: 17,
            maxRadius: 17,
          ),
          PopupMenuButton(
              itemBuilder: (context){
                return popUpMenuItem.map((e){
                  return PopupMenuItem(child: Text(e));
                }).toList();
              },
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black
              )
          )

        ],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        dragStartBehavior: DragStartBehavior.start,
        children:[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            // Danh sách việc cần làm
            Container(
              width: double.infinity,
              height: 120,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  border: Border.all(
                      color: Colors.black12,
                      width: 1.2,
                      style: BorderStyle.solid)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Tuần này",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, top: 10, right: 10, bottom: 15),
                        child: Text(
                          "Xem danh sách việc cần làm",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Hiện không có bài tập nào",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            // Các lớp học
            Container(
              width: double.infinity,
              height: 150,
              margin: const EdgeInsets.only(top: 0, bottom: 10, left: 10, right: 10),
              decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/img_breakfast.jpg'),
                    fit: BoxFit.cover,
                  )
                // border: Border.all(
                //     color: Colors.black12,
                //     width: 1.2,
                //     style: BorderStyle.solid)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Flexible(
                                child: Text(
                                  "Thực tập viết niên luận - Nhóm 19",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                              PopupMenuButton(
                                icon:
                                const Icon(Icons.more_vert, color: Colors.white),
                                itemBuilder: (context) {
                                  return popUpMenuClass.map((e) {
                                    return PopupMenuItem(child: Text(e));
                                  }).toList();
                                },
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "2022-2023.2.TIN3142.019",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],
                      )),
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 15,
                      left: 15,
                    ),
                    child: Text(
                      "Phong Trần Nguyên",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              margin: const EdgeInsets.only(top: 0, bottom: 10, left: 10, right: 10),
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/img_reachout.jpg'),
                    fit: BoxFit.cover,
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Flexible(
                                child: Text(
                                  "Lập trình Web - Nhóm 1",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                              PopupMenuButton(
                                icon:
                                const Icon(Icons.more_vert, color: Colors.white),
                                itemBuilder: (context) {
                                  return popUpMenuClass.map((e) {
                                    return PopupMenuItem(child: Text(e));
                                  }).toList();
                                },
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "2023-2024.1.TIN4493.001",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],
                      )),
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 15,
                      left: 15,
                    ),
                    child: Text(
                      "Phong Trần Nguyên",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              margin: const EdgeInsets.only(top: 0, bottom: 10, left: 10, right: 10),
              decoration: const BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/img_graduation.jpg'),
                    fit: BoxFit.cover,
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Flexible(
                                child: Text(
                                  "Java nâng cao _Nhóm 1",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                              PopupMenuButton(
                                icon:
                                const Icon(Icons.more_vert, color: Colors.white),
                                itemBuilder: (context) {
                                  return popUpMenuClass.map((e) {
                                    return PopupMenuItem(child: Text(e));
                                  }).toList();
                                },
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "2022-2023.1.TIN4013.001",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],
                      )),
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 15,
                      left: 15,
                    ),
                    child: Text(
                      "Hà Nguyễn Hoàng",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              margin: const EdgeInsets.only(top: 0, bottom: 10, left: 10, right: 10),
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/img_reachout.jpg'),
                    fit: BoxFit.cover,
                  )
                // border: Border.all(
                //     color: Colors.black12,
                //     width: 1.2,
                //     style: BorderStyle.solid)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Flexible(
                                child: Text(
                                  "2022-2023.1.Xã hôi học đại cương - Nhóm 3",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: false,
                                ),
                              ),
                              PopupMenuButton(
                                icon:
                                const Icon(Icons.more_vert, color: Colors.white),
                                itemBuilder: (context) {
                                  return popUpMenuClass.map((e) {
                                    return PopupMenuItem(child: Text(e));
                                  }).toList();
                                },
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "2022-2023.1.XHH1022.003",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],
                      )),
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 15,
                      left: 15,
                    ),
                    child: Text(
                      "Lê Duy Mai Phương",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              margin: const EdgeInsets.only(top: 0, bottom: 10, left: 10, right: 10),
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/img_code.jpg'),
                    fit: BoxFit.cover,
                  )
                // border: Border.all(
                //     color: Colors.black12,
                //     width: 1.2,
                //     style: BorderStyle.solid)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Flexible(
                                child: Text(
                                  "Kiến trúc máy tính - Nhóm 1",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                              PopupMenuButton(
                                icon:
                                const Icon(Icons.more_vert, color: Colors.white),
                                itemBuilder: (context) {
                                  return popUpMenuClass.map((e) {
                                    return PopupMenuItem(child: Text(e));
                                  }).toList();
                                },
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "2020-2021.1.TIN4493.001",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],
                      )),
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 15,
                      left: 15,
                    ),
                    child: Text(
                      "Chương Đặng Thanh",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black45,
        onPressed: (){
          showModalBottomSheet<void>(
            context: context,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  topLeft: Radius.circular(5),
                )
            ),
            builder: (BuildContext context) {
              return SizedBox(
                height: 110,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: GestureDetector(
                            child: const Text(
                                "Tạo lớp học",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                )
                            ),
                            onTap: (){
                              Navigator.pop(context);
                            }
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: GestureDetector(
                          child: Text(
                              "Tham gia lớp học",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              )
                          ),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ]
                ),
              );
            },
          );
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      drawer: Drawer(

        child: Column(
          children: [
            // Drawer header
            const SizedBox(
              height: 107,
              width: double.infinity,
              child: DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                          color: Colors.black12,
                          width: 1,
                        ))),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/googleLogo.png'),
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                      alignment: Alignment.centerLeft,
                    ),
                    Text(
                      " Lớp học",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 21,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.zero,
                children: [
                  // Menu chính
                  ListTile(
                    leading: Icon(
                      Icons.home_outlined,
                      size: 30,
                      color: Colors.blueAccent,
                    ),
                    title: Text(
                      "Lớp học",
                      style: TextStyle(fontSize: 17, color: Colors.blueAccent),
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.calendar_today,
                      size: 28,
                      color: Colors.black54,
                    ),
                    title: Text(
                      "Lịch",
                      style: TextStyle(fontSize: 17),
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.notifications_none_rounded,
                      size: 30,
                      color: Colors.black54,
                    ),
                    title: Text(
                      "Thông báo",
                      style: TextStyle(fontSize: 17),
                    ),
                    trailing: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  Divider(
                    color: Colors.black12,
                    thickness: 1.2,
                  ),
                  // Lớp đã đăng ký
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 5, left: 13, bottom: 15),
                    child: Text(
                      "Đã đăng ký",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.fact_check_outlined,
                      size: 30,
                      color: Colors.black54,
                    ),
                    title: Text(
                      "Lịch",
                      style: TextStyle(fontSize: 17),
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      contentPadding:
                      EdgeInsets.only(top: 5, left: 15, bottom: 5),
                      leading: CircleAvatar(
                        backgroundColor: Colors.orangeAccent,
                        minRadius: 18,
                        maxRadius: 18,
                        child: Text(
                          "T",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white
                          ),
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text(
                              "Thực tập viết niên luận - Nhóm 19",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Text(
                            "2022-2023.2.TIN3142.019",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )
                  ),
                  ListTile(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      contentPadding:
                      EdgeInsets.only(top: 5, left: 15, bottom: 5),
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                        minRadius: 18,
                        maxRadius: 18,
                        child: Text(
                          "N",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text(
                              "Lập trình Web - Nhóm 1",
                              style: TextStyle(fontSize: 17),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          Text(
                            "2023-2024.1.TIN4493.001",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )),
                  ListTile(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      contentPadding:
                      EdgeInsets.only(top: 5, left: 15, bottom: 5),
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        minRadius: 18,
                        maxRadius: 18,
                        child: Text(
                          "J",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white
                          ),
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text(
                              "Java nâng cao _Nhóm 1",
                              style: TextStyle(fontSize: 17),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          Text(
                            "2022-2023.1.TIN4013.001",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )),
                  ListTile(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      contentPadding:
                      EdgeInsets.only(top: 5, left: 15, bottom: 5),
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                        minRadius: 18,
                        maxRadius: 18,
                        child: Text(
                          "G",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text(
                              "2022-2023.1.Xã hội học đại cương - Nhóm 3",
                              style: TextStyle(fontSize: 17),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          Text(
                            "2022-2022.2.XHH1022.003",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )
                  ),
                  ListTile(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      contentPadding:
                      EdgeInsets.only(top: 5, left: 15, bottom: 5),
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        minRadius: 18,
                        maxRadius: 18,
                        child: Text(
                          "K",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white
                          ),
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text(
                              "Kiến trúc máy tính - Nhóm 1",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Text(
                            "2020-2021.1.TIN2013.001",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )
                  ),
                  Divider(
                    color: Colors.black12,
                    thickness: 1.2,
                  ),
                  // Menu phụ
                  ListTile(
                    onTap: (){
                      Navigator.pop(context);

                    },
                    leading: Icon(
                      Icons.offline_pin_outlined,
                      size: 30,
                      color: Colors.black54,
                    ),
                    title: Text(
                      "Tệp ngoại tuyến",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Icons.archive_outlined,
                      size: 30,
                      color: Colors.black54,
                    ),
                    title: Text(
                      "Lớp học đã lưu trữ",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Icons.folder_open_outlined,
                      size: 30,
                      color: Colors.black54,
                    ),
                    title: Text(
                      "Thư mục lớp học",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Icons.settings_outlined,
                      size: 30,
                      color: Colors.black54,
                    ),
                    title: Text(
                      "Cài đặt",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Icons.help_outline_outlined,
                      size: 30,
                      color: Colors.black54,
                    ),
                    title: Text(
                      "Trợ giúp",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
