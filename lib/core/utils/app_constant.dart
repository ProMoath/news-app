import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConstant {
  static const String appName = "News App";
  static String get apiKey => dotenv.env['API_KEY'] ?? '';
  static const String baseUrl='https://newsapi.org/';
  static const String topHeadlines = '/v2/top-headlines';
  static const String everything = '/v2/everything';

}