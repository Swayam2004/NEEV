import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
    // static String apiKey = 'YOUR_API_KEY_HERE';
    static String apiKey = dotenv.env['API_KEY'] ?? 'API_KEY not found';
}
