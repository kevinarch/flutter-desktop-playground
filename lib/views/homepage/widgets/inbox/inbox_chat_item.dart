import 'dart:math';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_desktop_playground/state_management/homepage/homepage_cubit.dart';
import 'package:flutter_desktop_playground/views/widgets/random_avatar.dart';

class InboxChatItem extends StatelessWidget {
  final String title;

  InboxChatItem({Key? key})
      : title = 'Sơn Tiêu ${Random().nextInt(1000)}',
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Listener(
      behavior: HitTestBehavior.translucent,
      onPointerDown: (event) => _onItemPointerDown(context, event),
      child: BlocBuilder<HomepageCubit, HomePageState>(
        builder: (_, state) {
          return Container(
            height: 65,
            decoration: BoxDecoration(
                color: state.activeItem == title
                    ? Theme.of(context).colorScheme.background
                    : Colors.white,
                border: BorderDirectional(
                    bottom: BorderSide(color: Theme.of(context).dividerColor))),
            child: Row(
              children: [
                if (state.activeItem == title)
                  VerticalDivider(
                      width: 2.0,
                      thickness: 4.0,
                      color: Theme.of(context).primaryColor),
                const SizedBox(width: 8),
                RandomAvatar(
                  size: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 8,left: 8, right: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: Theme.of(context).textTheme.headline5),
                      const SizedBox(height: 8),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing...',
                        style: Theme.of(context).textTheme.bodyText1,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _onItemPointerDown(
      BuildContext context, PointerDownEvent event) async {
    if (event.kind == PointerDeviceKind.mouse &&
        event.buttons == kSecondaryMouseButton) {
      final overlay =
          Overlay.of(context)?.context.findRenderObject() as RenderBox;
      final menuItem = await showMenu<int>(
          context: context,
          items: [
            PopupMenuItem(child: Text('Copy'), value: 1),
            PopupMenuItem(child: Text('Cut'), value: 2),
          ],
          position: RelativeRect.fromSize(
              event.position & Size(48.0, 48.0), overlay.size));
      // Check if menu item clicked
      switch (menuItem) {
        case 1:
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Copy clicket'),
            behavior: SnackBarBehavior.floating,
          ));
          break;
        case 2:
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Cut clicked'),
              behavior: SnackBarBehavior.floating));
          break;
        default:
      }
    } else if (event.kind == PointerDeviceKind.mouse &&
        event.buttons == kPrimaryMouseButton) {
      BlocProvider.of<HomepageCubit>(context).setActiveItem(title);
    }
  }
}
