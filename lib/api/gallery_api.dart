import 'dart:convert';
import 'package:http/http.dart' as http;

String initialUrl = "https://api.unsplash.com/";
String token =
    "cf49c08b444ff4cb9e4d126b7e9f7513ba1ee58de7906e4360afc1a33d1bf4c0";

Future<List<dynamic>> getPhotos() async {
  var response = await http.get(initialUrl + "photos/?client_id=" + token);
  switch (response.statusCode) {
    case 200:
      {
        List<dynamic> result = json.decode(response.body);
        return result;
      }
    default:
      return new List<dynamic>();
  }
}
