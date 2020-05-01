import 'package:http/http.dart' as http;
import 'dart:convert' as dartConvert;

class NetworkHelper {
  String url;

  NetworkHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = dartConvert.jsonDecode(data);
      var weatherId = decodedData['weather'][0]['id'];
      var temperature = decodedData['main']['temp'];
      var city = decodedData['name'] as String;
      return decodedData;
      /*  print(
          'Weather ID : $weatherId , Tempearature : $temperature , City : $city');
    } else {
      print('Code: ${response.statusCode} Body: ${response.body}');
    }*/
    }
  }
}
