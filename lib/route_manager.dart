import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'views/common/unknown_screen.dart';
import 'views/homepage/homepage_screen.dart';

class RouteManager {
  static RouteFactory get routing {
    return (settings) {
      switch (settings.name) {
        case HomePageScreenProvider.route:
          return MaterialPageRoute(builder: (_) => HomePageScreenProvider());
        default:
          return MaterialPageRoute(builder: (_) => const UnknownScreen());
      }
    };
  }
}
