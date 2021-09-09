import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class ChatMessageFooter extends StatelessWidget {
  const ChatMessageFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
            height: 70,
            padding: EdgeInsets.all(8),
            child: TextField(
              maxLines: 3,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Send message...'
              ),
              style: Theme.of(context).textTheme.bodyText1,
            ),
          )),
          Container(
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).primaryColor,
            ),
            padding: EdgeInsets.all(8),
            child: Icon(FluentIcons.send_20_regular, color: Colors.white),
          )
        ],
      ),
    );
  }
}
