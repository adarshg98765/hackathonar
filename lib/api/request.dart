import 'dart:async';

import 'package:http/http.dart' as http;

class ApiMethods {
  Future<String> getRequest(url) async {
    var client = http.Client();
    try {
      var finalurl = Uri.parse(BASE_URL + url);
      var response = await client.get(finalurl);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        print(jsonString);
        return jsonString;
      } else {
        throw Exception("Failed to fetch data!");
      }
    } finally {
      client.close();
    }
  }
}
