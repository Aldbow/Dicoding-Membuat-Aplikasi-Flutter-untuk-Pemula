import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';
import 'package:chatty/widgets/chat_tile.dart';

class ChatTile extends StatefulWidget {

  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile({required this.imageUrl, required this.name, required this.text, required this.time, required this.unread});

  @override
  _ChatTileState createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            widget.imageUrl,
            width: 55,
            height: 55,
          ),
          SizedBox(width: 12,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: titleTextStyle,
              ),
              Text(
                  widget.text,
                  style: widget.unread ? subtitleTextStyle.copyWith(
                      color: blackColor,
                  ) : subtitleTextStyle
              )
            ],
          ),
          Spacer(),
          Text(
            widget.time,
            style: subtitleTextStyle,
          )
        ],
      ),
    );
  }
}
