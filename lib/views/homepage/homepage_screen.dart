import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_desktop_playground/state_management/homepage/homepage_cubit.dart';
import 'package:flutter_desktop_playground/views/homepage/widgets/inbox/inbox.dart';

import 'widgets/chat_message/chat_message.dart';

class HomePageScreenProvider extends StatelessWidget {
  static const route = 'HomePageProvider';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomepageCubit(),
      child: HomePageScreen(),
    );
  }
}

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Flexible(flex: 3, child: Inbox()),
            const VerticalDivider(
              width: 1,
              color: Colors.black26,
            ),
            Flexible(flex: 7, child: ChatMessage())
          ],
        ),
      ),
    );
  }
}
