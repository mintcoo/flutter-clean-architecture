import 'package:flutter/material.dart';
import 'package:note_app/ui/colors.dart';
import 'package:note_app/views/notes/notes_screen.dart';

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
                    backgroundColor: lightBlue,
                    foregroundColor: darkGrey,
                  )),
      home: const NoteScreen(),
    );
  }
}
