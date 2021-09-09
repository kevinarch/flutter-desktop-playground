import 'package:flutter/material.dart';
import 'package:flutter_desktop_playground/views/homepage/widgets/chat_message/widgets/chat_message_content.dart';
import 'package:flutter_desktop_playground/views/homepage/widgets/chat_message/widgets/chat_message_footer.dart';
import 'package:flutter_desktop_playground/views/homepage/widgets/chat_message/widgets/chat_message_header.dart';

class ChatMessage extends StatefulWidget {
  const ChatMessage({Key? key}) : super(key: key);

  @override
  _ChatMessageState createState() => _ChatMessageState();
}

class _ChatMessageState extends State<ChatMessage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChatMessageHeader(),
        Divider(height: 1, thickness: 1, color: Theme.of(context).dividerColor),
        Expanded(
          child: ChatMessageContent()
        ),
        Divider(height: 1, thickness: 1, color: Theme.of(context).dividerColor),
        ChatMessageFooter()
      ],
    );
  }
}
