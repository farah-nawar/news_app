import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/model/NewsResponse.dart';

import 'model/SourcesResponse.dart';

class ApiManager {
  static const String baseURL='newsapi.org';

    //https://newsapi.org/v2/top-headlines/sources?apiKey=bf41c384122e421897631ba87f0ce049
    static Future<SourcesResponse> getSources(String categoryId) async {
      var url = Uri.https(baseURL, '/v2/top-headlines/sources',
          {'apiKey': 'bf41c384122e421897631ba87f0ce049',
            'category': categoryId
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

    static Future<NewsResponse> getNews(
        {String? sourceId, String? keyword, int? page})async{
      //https://newsapi.org/v2/everything?q=bitcoin&apiKey=bf41c384122e421897631ba87f0ce049
      var url= Uri.https(baseURL,'/v2/everything',
      {
          'apiKey':'bf41c384122e421897631ba87f0ce049',
          'sources':sourceId,
            'q': keyword

      }
      );
      try {
        var response = await http.get(url);
        var bodyString = response.body;
        var bodyjson = jsonDecode(bodyString);
        var newsresponses = NewsResponse.fromJson(bodyjson);
        return newsresponses;
      } catch(e){
        throw e;
      }
    }

}
