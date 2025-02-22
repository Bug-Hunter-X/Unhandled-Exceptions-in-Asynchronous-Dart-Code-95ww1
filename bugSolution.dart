```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        return jsonData;
      } on FormatException catch (e) {
        print('Error: Invalid JSON format - $e');
        return null; //or throw a custom exception
      }
    } else {
      print('Error: HTTP request failed with status: ${response.statusCode}');
      return null; //or throw a custom exception
    }
  } catch (e) {
    print('Error: An unexpected error occurred: $e');
    return null; //or throw a custom exception
  }
}
void main() async {
  final data = await fetchData();
  if (data != null) {
    print(data['key']); 
  }
}
```