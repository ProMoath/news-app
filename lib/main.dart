import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_app/core/utils/route/app_router.dart';
import 'package:news_app/core/utils/route/app_routes.dart';
import 'package:news_app/core/utils/theme/app_theme.dart';

import 'core/utils/app_constant.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstant.appName,
      theme:AppTheme.mainTheme,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppRoutes.home,
    );
  }
}