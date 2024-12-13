import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/di/provider_setup.dart';
import 'package:note_app/router.dart';
import 'package:note_app/ui/colors.dart';
import 'package:provider/provider.dart';

void main() async {
  // Flutter 바인딩 초기화
  // Flutter 앱이 네이티브 기능을 사용할 수 있도록(화면을 그리기 전에 세팅되는 것들) "준비 운동"을 시키는 과정
  WidgetsFlutterBinding.ensureInitialized();

  // 프로바이더 설정
  final providers = await getProviders();

  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp.router(
        routerConfig: router,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.white,
          scaffoldBackgroundColor: darkGrey,
          useMaterial3: true,
          // 기존 appbar theme을 가져오고 copyWith로 원하는 것 씌우기
          appBarTheme: Theme.of(context).appBarTheme.copyWith(
                backgroundColor: darkGrey,
              ),
          floatingActionButtonTheme:
              // 기존 플로팅 버튼 Theme을 가져오고 copyWith로 원하는 것 씌우기
              Theme.of(context).floatingActionButtonTheme.copyWith(
                    backgroundColor: Colors.white,
                    foregroundColor: darkGrey,
                    shape: const CircleBorder(),
                  ),
        ),
      ),
    );
  }
}
