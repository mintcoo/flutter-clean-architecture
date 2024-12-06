import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:image_search/di/provider_setup.dart';
import 'package:image_search/views/home/home_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  await dotenv.load();
  runApp(
    // 프로바이더 정리한 걸 여기서 세팅
    MultiProvider(
      providers: globalProviders,
      child: const MyApp(),
    ),
  );
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
      home: const HomeScreen(),
    );
  }
}
