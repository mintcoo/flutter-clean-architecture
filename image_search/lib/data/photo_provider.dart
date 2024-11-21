// import 'package:flutter/material.dart';
// import 'package:image_search/views/home_view_model.dart';

// // Provider 라이브러리 사용하면서 안써도 됨
// // 원하는 객체를 원하는 위젯으로 전달하는 곳
// class PhotoProvider extends InheritedWidget {
//   final HomeViewModel viewModel;

//   const PhotoProvider({
//     super.key,
//     required super.child,
//     required this.viewModel,
//   });
//   // 기본 Provider 값 설정
//   static PhotoProvider? maybeOf(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<PhotoProvider>();
//   }

//   static PhotoProvider of(BuildContext context) {
//     final PhotoProvider? result = maybeOf(context);
//     assert(result != null, 'No PhotoProvider found in context');
//     return result!;
//   }

//   // 이전 상태의 oldWidget과 현재 상태의 객체가 다르면 true를 반환해서 위젯을 다시 그리게 함
//   // Provider 개편시작하면서 그냥 우선 true로 수정
//   @override
//   bool updateShouldNotify(PhotoProvider oldWidget) {
//     return true;
//   }
// }
