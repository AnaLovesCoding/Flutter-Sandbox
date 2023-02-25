import 'package:flutter/material.dart';

class FriendContatctDetailsPage extends StatefulWidget {
  //const FriendContatctDetailsPage({Key? key}) : super(key: key);
  var contactDetails;

  FriendContatctDetailsPage(this.contactDetails);

  @override
  State<FriendContatctDetailsPage> createState() => _FriendContatctDetailsPageState();
}

class _FriendContatctDetailsPageState extends State<FriendContatctDetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('${widget.contactDetails['name']}'),
          Text('${widget.contactDetails['phone']}'),
          Text('${widget.contactDetails['imageUrl']}'),
          Text('${widget.contactDetails['type']}')
        ],
      )
    );
  }
}
