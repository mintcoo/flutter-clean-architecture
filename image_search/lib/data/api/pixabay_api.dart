import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:image_search/data/api/result.dart';

// api 사진 받아오는 곳
class PixabayApi {
  final http.Client client;
  final String baseUrl;
  final String key;

  PixabayApi(this.client)
      : baseUrl = dotenv.get("BASE_URL"),
        key = dotenv.get("PIXABAY_API_KEY");

  Future<Result<Iterable>> getPhotos(String query,
      {http.Client? client}) async {
    // client 가 null 이면 기존 클라이언트 사용
    client ??= http.Client();

    final url = Uri.parse("$baseUrl?key=$key&q=$query&image_type=photo");
    try {
      final response = await client.get(url);

      if (response.statusCode == 200) {
        final Map<String, dynamic> photos = jsonDecode(response.body);
        Iterable hits = photos['hits'];
        return Result.success(hits);
      } else {
        return Result.error("${response.statusCode} 서버 에러");
      }
    } catch (error) {
      return Result.error("네트워크 에러");
    }
  }
}
