import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConstants {
  // API
  static String baseUrl = dotenv.get('BASE_URL');
}
