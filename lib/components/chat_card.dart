import 'package:flutter/material.dart';
import 'package:flutter_kakao_2/models/chat.dart';

import '../models/User.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({required this.chat, Key? key}) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(
            chat.image,
          ),
        ),
        title: Text(
          chat.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          chat.content,
          style: TextStyle(fontSize: 12),
        ),
        trailing: Column(
          children: [
            Text("오후 11:00"),
            SizedBox(height: 5),
            Container(
              alignment: AlignmentDirectional.center,
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Text("1", style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
