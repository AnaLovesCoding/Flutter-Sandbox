import 'package:flutter/material.dart';
import 'package:login_project/list_view_demo.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Row(
              children: [
                Expanded(
                  flex: 15,
                  child: IconButton(
                    icon: const Icon(Icons.menu),
                    color: Colors.red,
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 70,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    child: Image(
                        image: NetworkImage(
                            'https://logos-world.net/wp-content/uploads/2020/09/Tinder-Logo.png')),
                  ),
                ),
                Expanded(
                  flex: 15,
                  child: IconButton(
                    icon: const Icon(Icons.chat),
                    color: Colors.red,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 65,
            child: Column(
              children: [
                Expanded(
                  flex: 70,
                  child: Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                    child: Image(
                      image: NetworkImage(
                          'https://www.nicesnippets.com/demo/following1.jpg'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      children: [
                        Text(
                          'Alice, 22',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '8',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.photo),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 20,
                  child: Container(
                    margin: EdgeInsets.only(left: 30,right: 30),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 50,
                          child: Row(
                            children: [
                              Icon(
                                  Icons.person,
                                size: 42,
                              ),
                              Spacer(),
                              Container(
                                margin: EdgeInsets.only(right: 20),
                                child: Text(
                                  '36',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 50,
                          child: Row(
                            children: [
                              Icon(
                                  Icons.menu_book_rounded,
                                size: 42,
                              ),
                              Spacer(),
                              Text(
                                '36',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.network('https://thumbs.dreamstime.com/b/red-cross-symbol-icon-as-delete-remove-fail-failure-incorr-incorrect-answer-89999776.jpg'),
                  iconSize: 100,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.network('https://upload.wikimedia.org/wikipedia/en/thumb/3/35/Information_icon.svg/2048px-Information_icon.svg.png'),
                  iconSize: 50,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.network('https://png.pngtree.com/png-vector/20190114/ourlarge/pngtree-vector-favorite-icon-png-image_313518.jpg'),
                  iconSize: 100,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ListViewDemoPage()),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
