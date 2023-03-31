import 'package:flutter/material.dart';
import 'package:flutter_kakao_2/components/bottom_icon_button.dart';
import 'package:flutter_kakao_2/components/round_icon_button.dart';
import 'package:flutter_kakao_2/models/User.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({required this.user, Key? key}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(user.backgroundImage),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent, // 투명하게 해줌
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              FontAwesomeIcons.times,
              size: 30,
              color: Colors.white,
            ),
          ),
          actions: [
            RoundIconButton(icon: FontAwesomeIcons.gift),
            SizedBox(width: 15),
            RoundIconButton(icon: FontAwesomeIcons.cog),
            SizedBox(width: 20)
          ],
        ),
        body: Column(
          children: [
            Spacer(),
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(user.backgroundImage),
                  fit: BoxFit.cover
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              user.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 5),
            Text(
              user.intro,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 20),
            Divider(),
            Container(
              child: Column(
                children: [
                  if (user.name == me.name) _myIcons() else _friendIcons()
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _myIcons() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BottomIconButton(icon: FontAwesomeIcons.comment, text: "나와의 채팅"),
        SizedBox(width: 50),
        BottomIconButton(icon: FontAwesomeIcons.pen, text: "프로필 편집"),
      ],
    );
  }

  Widget _friendIcons() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BottomIconButton(icon: FontAwesomeIcons.comment, text: "1:1채팅"),
        SizedBox(width: 50),
        BottomIconButton(icon: FontAwesomeIcons.pen, text: "통화하기"),
      ],
    );
  }
}
