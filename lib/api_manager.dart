import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model/SourcesResponse.dart';

class ApiManager {
  static const String baseURL='newsapi.org';

    //https://newsapi.org/v2/top-headlines/sources?apiKey=bf41c384122e421897631ba87f0ce049
    static Future<SourcesResponse> getSources() async {
      var url = Uri.https(baseURL, '/v2/top-headlines/sources',
          {'apiKey': 'bf41c384122e421897631ba87f0ce049',
          }
          );
      try {
        var response = await http.get(url);
        var bodyString = response.body;
        var bodyjson = jsonDecode(bodyString); //json
        var sourcesresponse = SourcesResponse.fromJson(bodyjson); //object
        return sourcesresponse;
      } catch (e) {
        throw e;
      }
    }

}
