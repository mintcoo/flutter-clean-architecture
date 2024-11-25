import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:image_search/data/api/pixabay_api.dart';
import 'package:image_search/data/api/result.dart';
import 'package:image_search/domain/models/repository/photo_api_repository.dart';
import 'package:image_search/domain/models/photo_model.dart';

class PhotoApiRepositoryImpl implements PhotoApiRepository {
  final PixabayApi api;

  PhotoApiRepositoryImpl({required this.api});

  // 사진들 가져오기
  @override
  Future<Result<List<Photo>>> getPhotos(String query) async {
    final Result<Iterable> result = await api.getPhotos(query);

    // freezed를 이용해서 when 사용 가능
    return result.when(
      success: (iterable) =>
          Result.success(iterable.map((e) => Photo.fromJson(e)).toList()),
      error: (message) => Result.error(message),
    );
  }
}
