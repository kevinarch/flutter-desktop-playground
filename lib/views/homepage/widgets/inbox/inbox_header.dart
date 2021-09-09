import 'dart:math';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desktop_playground/views/widgets/random_avatar.dart';

class InboxHeader extends StatelessWidget {
  const InboxHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Inbox',
                style: Theme
                    .of(context)
                    .textTheme
                    .headline3),
            Icon(FluentIcons.settings_20_regular)
          ],
        ));
  }
}
