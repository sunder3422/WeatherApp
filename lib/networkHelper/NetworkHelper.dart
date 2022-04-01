import 'package:http/http.dart' as http;
import 'dart:convert';
import '../apikey.dart';

class NetworkHelper {
  final double lat;
  final double long;
  NetworkHelper(this.lat, this.long);
  fetchData() async {
    var apiKey = APIKey.getApiKey();
    http.Response response = await http
        // .get(Uri.parse('https://api.coindesk.com/v1/bpi/currentprice.json'));
        .get(Uri.parse(
            'https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$long&exclude=minutely&appid=$apiKey'));

    if (response.statusCode == 200) {
      String resdata = response.body;
      var data = jsonDecode(resdata);
      return data;
    } else {
      throw Exception('Failed to load album');
    }
  }
}
