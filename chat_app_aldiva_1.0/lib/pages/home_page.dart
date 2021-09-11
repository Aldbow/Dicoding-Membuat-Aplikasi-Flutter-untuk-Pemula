import 'package:chatty/pages/message_page_friend1.dart';
import 'package:chatty/pages/message_page_friend2.dart';
import 'package:chatty/pages/message_page_group1.dart';
import 'package:chatty/theme.dart';
import 'package:chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: greenColor,
          child: Icon(
            Icons.add,
            size: 28,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: cyanColor,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profile.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Alvia Aretha',
                  style: TextStyle(fontSize: 20, color: whiteColor),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Freelance Designer',
                  style: TextStyle(color: lightBlueColor, fontSize: 16),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(40))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      InkWell(
                        child: ChatTile(
                          imageUrl: 'assets/images/friend1.png',
                          name: 'Andrew',
                          text: 'Can we meet ...',
                          time: 'Now',
                          unread: true,
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MessagePageFriend1(),
                          ));
                        },
                      ),
                      InkWell(
                        child: ChatTile(
                          imageUrl: 'assets/images/friend2.png',
                          name: 'Angel',
                          text: 'We will do that...',
                          time: '4.23',
                          unread: false,
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => MessagePageFriend2(),
                          ));
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      InkWell(
                        child: ChatTile(
                          imageUrl: 'assets/images/group1.png',
                          name: 'Medan Erie',
                          text: 'Should we meet?',
                          time: '4.20',
                          unread: true,
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MessagePage(),
                          ));
                        },
                      ),
                      InkWell(
                        child: ChatTile(
                          imageUrl: 'assets/images/group2.png',
                          name: 'Aldiva',
                          text: 'When we will we.',
                          time: '10.23',
                          unread: false,
                        ),
                      ),
                      InkWell(
                        child: ChatTile(
                          imageUrl: 'assets/images/group3.png',
                          name: 'Beta',
                          text: 'Alright lets do it...',
                          time: 'Now',
                          unread: true,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
