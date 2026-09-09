import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../features/home/view/pages/home_page.dart';
import 'app_routes.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    switch (settings.name){
      case AppRoutes.home:
        return CupertinoPageRoute(builder: (_) => const HomePage(),
        settings: settings,
        );
        default:
          return CupertinoPageRoute(
              builder: (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
            settings: settings
          );
    }
  }
}