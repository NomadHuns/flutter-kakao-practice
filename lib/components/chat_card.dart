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
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          chat.content,
          style: const TextStyle(fontSize: 12),
        ),
        trailing: Column(
          children: [
            Text(chat.time),
            const SizedBox(height: 5),
            if(chat.count != "0")
            Container(
              alignment: AlignmentDirectional.center,
              width: 25,
              height: 25,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Text(chat.count, style: const TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
