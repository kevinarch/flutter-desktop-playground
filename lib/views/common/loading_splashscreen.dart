import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoadingSplashScreen extends StatelessWidget {
  const LoadingSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset('assets/svg/socialone.svg'),
            const SizedBox(height: 8),
            CircularProgressIndicator()
          ],
        )),
      ),
    );
  }
}
