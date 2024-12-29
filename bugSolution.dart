```dart
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Use the response data
      print('Data fetched successfully: ${response.body}');
    } else {
      // Handle the error based on the status code
      if(response.statusCode == 404){
        throw Exception('Resource not found');
      } else if (response.statusCode == 500) {
        throw Exception('Server error');
      } else {
        throw Exception('Failed to load data. Status code: ${response.statusCode}');
      }
    }
  } on SocketException {
    print('Network error: Please check your internet connection.');
  } on FormatException {
    print('Invalid data format received.');
  } on http.ClientException catch (e) {
    print('HTTP client error: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
    rethrow; // Re-throw to let the caller handle it if necessary
  }
}
```