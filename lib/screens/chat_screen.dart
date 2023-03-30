import 'package:flutter/material.dart';
import 'package:flutter_kakao_2/components/chat_card.dart';

import '../models/chat.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("친구")),
      body: Column(
        children: [
          const SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) => ChatCard(chat: chats[index]),
            ),
          ),
        ],
      ),
    );
  }
}
