import 'package:flutter/material.dart';
import 'package:chatty/widgets/receiver_bubble.dart';
import 'package:chatty/widgets/sender_bubble.dart';

import '../theme.dart';

class MessagePageFriend2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 40),
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(48),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/friend2.png',
              width: 55,
              height: 55,
              fit: BoxFit.fill,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Angel',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Hi There!',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Color(0xff808BA2),
                  ),
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/images/btn_call.png',
              width: 55,
              height: 55,
              fit: BoxFit.fill,
            ),
          ],
        ),
      );
    }

    Widget body() {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: ListView(
            children: [
              ReceiverBubble(
                imageUrl: 'assets/images/friend2.png',
                text: 'How are you Aretha?',
                time: '2:30',
              ),
              ReceiverBubble(
                imageUrl: 'assets/images/friend2.png',
                text: 'Check the Erie group Aretha',
                time: '3:11',
              ),
              ReceiverBubble(
                imageUrl: 'assets/images/friend2.png',
                text: 'We will do that okay?',
                time: '4:23',
              ),
            ],
          ),
        ),
      );
    }

    Widget chatField() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Type message..',
                  hintStyle: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('tapped');
              },
              child: Image.asset(
                'assets/images/form.png',
                width: 35,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF8FAFC),
      floatingActionButton: chatField(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}