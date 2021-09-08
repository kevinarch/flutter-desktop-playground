import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageScreenProvider extends StatelessWidget {
  static const route = 'HomePageProvider';

  @override
  Widget build(BuildContext context) {
    return HomePageScreen();
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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
                onTap: () {
                  print('${MediaQuery.of(context).size}');
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                            title: Text('Alert'),
                            content: Text('Hello'),
                          ));
                },
                onSecondaryTap: () {
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: Text('Alert'),
                        content: Text('Right click !'),
                      ));
                },
                child: Text('Hello homepage')),
          ],
        ),
      ),
    );
  }
}
