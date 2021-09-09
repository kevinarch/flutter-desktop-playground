import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import 'inbox_chat_item.dart';
import 'inbox_header.dart';

class Inbox extends StatefulWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return SizedBox(
        height: constraints.maxHeight,
        width: constraints.maxWidth,
        child: Column(
          children: [
            InboxHeader(),
            Expanded(
              child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (_, index) {
                    return InboxChatItem();
                  }),
            )
          ],
        ),
      );
    });
  }
}
