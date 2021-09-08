import 'package:flutter/material.dart';
import 'package:menubar/menubar.dart';
import 'package:window_size/window_size.dart';

import 'route_manager.dart';
import 'views/common/error_screen.dart';
import 'views/common/loading_splashscreen.dart';
import 'views/homepage/homepage_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setWindowFrame(const Rect.fromLTWH(100, 100, 1200, 800));
  setWindowTitle('YounetSI Desktop Client');

  const menuItems = <Submenu>[
    Submenu(label: 'Features', children: [
      MenuItem(label: 'Messenger'),
      MenuItem(label: 'News'),
      MenuItem(label: 'Notificatioin'),
      MenuItem(label: 'Profile')
    ]),
    Submenu(label: 'Settings', children: []),
    Submenu(label: 'Help', children: [])
  ];
  
  setApplicationMenu(menuItems);

  runApp(const MainApp());
}

Future<void> initialization() async {

  await Future.delayed(const Duration(seconds: 3));
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool initialized = false;
  String? errorMessage;

  @override
  void initState() {
    super.initState();

    initialization().then((_) {
      setState(() {
        initialized = true;
      });
    }, onError: (e) {
      setState(() {
        errorMessage = e.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (errorMessage != null) return ErrorScreen(errorMessage!);

    if (initialized) {
      return MaterialApp(
        title: 'Cupito',
        initialRoute: HomePageScreenProvider.route,
        onGenerateRoute: RouteManager.routing,
      );
    }

    return const LoadingSplashScreen();
  }
}

