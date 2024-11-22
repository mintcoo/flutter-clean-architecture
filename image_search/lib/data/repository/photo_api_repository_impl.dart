import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:image_search/data/api/pixabay_api.dart';
import 'package:image_search/domain/models/repository/photo_api_repository.dart';
import 'package:image_search/domain/models/photo_model.dart';

class PhotoApiRepositoryImpl implements PhotoApiRepository {
  final PixabayApi api;

  PhotoApiRepositoryImpl({required this.api});

  // 사진들 가져오기
  @override
  Future<List<Photo>> getPhotos(String query) async {
    final result = await api.getPhotos(query);

    return result.map((e) => Photo.fromJson(e)).toList();
  }
}
