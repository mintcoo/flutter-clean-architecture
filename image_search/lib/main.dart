import 'package:flutter/material.dart';
import 'package:image_search/data/api/pixabay_api.dart';
import 'package:image_search/data/photo_provider.dart';
import 'package:image_search/views/home_screen.dart';
import 'package:image_search/views/home_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // ChangeNotifierProvider를 사용하면 변경사항을 알려줌으로써 UI를 새로 렌더링
      home: ChangeNotifierProvider(
        create: (_) => HomeViewModel(PixabayApi()),
        child: const HomeScreen(),
      ),
    );
  }
}
