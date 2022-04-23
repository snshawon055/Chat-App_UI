import 'package:flutter/material.dart';
import 'package:personal_chat_app/compoints/body.dart';
import 'package:personal_chat_app/widgets/constants.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _selecteIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {},
        child: Icon(
          Icons.person_add_alt,
          color: Colors.white,
        ),
      ),
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            _selecteIndex = value;
          });
        },
        currentIndex: _selecteIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.messenger,
            ),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
            ),
            label: "People",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
            ),
            label: "Call",
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage(
                "assets/images/user_5.png",
              ),
            ),
            label: "Profile",
          )
        ],
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Text(
      "Chats",
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.search,
        ),
      ),
    ],
  );
}
