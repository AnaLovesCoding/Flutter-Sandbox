import 'package:flutter/material.dart';
import 'package:login_project/friend_contact_detail.dart';
import 'package:login_project/friend_data.dart';
import 'dart:math';

class ListViewDemoPage extends StatefulWidget {
  const ListViewDemoPage({Key? key}) : super(key: key);

  @override
  State<ListViewDemoPage> createState() => _ListViewDemoPageState();
}

class _ListViewDemoPageState extends State<ListViewDemoPage> {
  final List<String> entries = <String>[
    'Alice',
    'Ben',
    'Thomas',
    'Zach',
    'Ana',
    'Alice',
    'Ben',
    'Thomas',
    'Zach',
    'Ana',
    'Alice',
    'Ben',
    'Thomas',
    'Zach',
    'Ana'
  ];

  final List<String> phones = <String>[
    '213-465-111',
    '213-465-112',
    '213-465-113',
    '213-465-114',
    '213-465-115',
    '213-465-121',
    '213-465-122',
    '213-465-123',
    '213-465-124',
    '213-465-125',
    '213-465-131',
    '213-465-132',
    '213-465-133',
    '213-465-134',
    '213-465-135'
  ];

  var friendList = [
    {
      'name' : 'Ana',
      'phone' : '213-465-111',
      'imageUrl' : 'https://www.clipartmax.com/png/middle/162-1623921_stewardess-510x510-user-profile-icon-png.png',
      'type' : 'MOBILE'
    },
    {
      'name' : 'ZACH',
      'phone' : '213-703-133',
      'imageUrl' : 'https://www.citypng.com/public/uploads/preview/free-round-flat-male-portrait-avatar-user-icon-png-11639648873oplfof4loj.png',
      'type' : 'WORK'
    },
    {
      'name' : 'ALICE',
      'phone' : '213-451-135',
      'imageUrl' : 'https://www.pngitem.com/pimgs/m/0-6243_user-profile-avatar-scalable-vector-graphics-icon-woman.png',
      'type' : 'HOME'
    }

  ];

  List<Friend> friends = <Friend>[];

  _ListViewDemoPageState() {
    Friend f1 = Friend(
        "Ana",
        "213-465-111",
        "https://www.clipartmax.com/png/middle/162-1623921_stewardess-510x510-user-profile-icon-png.png",
        "MOBILE");
    Friend f2 = Friend(
        "Zach",
        "213-703-000",
        "https://www.citypng.com/public/uploads/preview/free-round-flat-male-portrait-avatar-user-icon-png-11639648873oplfof4loj.png",
        "WORK");
    Friend f3 = Friend(
        "ALICE",
        "213-465-121",
        "https://www.pngitem.com/pimgs/m/0-6243_user-profile-avatar-scalable-vector-graphics-icon-woman.png",
        "HOME");
    Friend f4 = Friend("JOE", "213-703-787",
        "https://cdn-icons-png.flaticon.com/512/3135/3135715.png", "CELL");

    friends = [f1, f2, f3, f4];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: friendList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FriendContatctDetailsPage(friendList[index])),
                );
              },
              title: Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('${friendList[index]['imageUrl']}'),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${friendList[index]['name']}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('${friendList[index]['phone']}')
                        ],
                      ),
                      Spacer(),
                      Text('${friendList[index]['type']}'),
                    ],
                  )),
            );
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            var rng = Random();
            var friend = {
              'name' : entries[rng.nextInt(entries.length)],
              'phone' : phones[rng.nextInt(phones.length)],
              'imageUrl' : 'https://www.clipartmax.com/png/middle/162-1623921_stewardess-510x510-user-profile-icon-png.png',
              'type' : 'CELL'
            };
            friendList.add(friend);
            print(friendList);
            setState(() {

            });
          },
        child: Icon(Icons.add),
      ),
    );
  }
}
