import 'package:flutter/material.dart';
import 'package:flutter_kakao_2/views/chats/chats_page.dart';
import 'package:flutter_kakao_2/views/friends/friends_page.dart';
import 'package:flutter_kakao_2/views/more/more_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainHolder extends StatefulWidget {
  const MainHolder({Key? key}) : super(key: key);

  @override
  State<MainHolder> createState() => _MainHolderState();
}

class _MainHolderState extends State<MainHolder> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: [
          FriendsPage(),
          ChatsPage(),
          MorePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.comment),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.ellipsis),
            label: "",
          ),
        ],
      ),
    );
  }
}
