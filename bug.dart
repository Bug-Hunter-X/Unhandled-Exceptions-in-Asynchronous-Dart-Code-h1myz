```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Use the response data
      print('Data fetched successfully: ${response.body}');
    } else {
      // Handle the error
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('An error occurred: $e');
    //This is where the error handling is lacking.  The type of exception is not checked, leading to difficulty debugging.
    rethrow; // Re-throw to let the caller handle it
  }
}
```