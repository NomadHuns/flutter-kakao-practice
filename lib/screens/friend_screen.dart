import 'package:flutter/material.dart';
import 'package:flutter_kakao_2/components/profile_card.dart';
import 'package:flutter_kakao_2/models/User.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("친구")),
      body: Column(
        children: [
          const SizedBox(height: 10),
          ProfileCard(user: me),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text("친구"),
                SizedBox(width: 6),
                Text("${friends.length}"),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: friends.length,
              itemBuilder: (context, index) => ProfileCard(user: friends[index]),
            ),
          ),
        ],
      ),
    );
  }
}
