import 'package:image_search/data/api/pixabay_api.dart';
import 'package:image_search/data/repository/photo_api_repository_impl.dart';
import 'package:image_search/domain/models/repository/photo_api_repository.dart';
import 'package:image_search/domain/use_case/get_photos_use_case.dart';
import 'package:image_search/views/home/home_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:http/http.dart' as http;

// 1. 전역 객체
List<SingleChildWidget> globalProviders = [
  ...independentProviders,
  ...dependentProviders,
  ...viewModels,
];

// 2. 독립 객체
List<SingleChildWidget> independentProviders = [
  Provider<http.Client>(create: (context) => http.Client()),
];

// 3. 2번에 의존성 있는 객체
List<SingleChildWidget> dependentProviders = [
  // 제네릭 타입 첫번째는 위에서 받을 타입, 두번째는 반환할 타입
  ProxyProvider<http.Client, PixabayApi>(
    update: (context, client, _) => PixabayApi(client),
  ),
  ProxyProvider<PixabayApi, PhotoApiRepository>(
    update: (context, api, _) => PhotoApiRepositoryImpl(api: api),
  ),
  ProxyProvider<PhotoApiRepository, GetPhotosUseCase>(
    update: (context, repository, _) => GetPhotosUseCase(repository),
  ),
];

// 4. ViewModel
List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<HomeViewModel>(
      create: (context) => HomeViewModel(context.read<GetPhotosUseCase>()))
];
