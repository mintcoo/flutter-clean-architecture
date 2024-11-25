import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search/views/home/home_view_model.dart';
import 'package:image_search/views/home/components/photo_card_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();
  StreamSubscription? _eventSubscription;

  @override
  void initState() {
    super.initState();

    // 홈 화면에서 에러 표시해주는 이벤트 스트림 컨트롤러 구독
    final viewModel = context.read<HomeViewModel>();
    _eventSubscription = viewModel.eventStream.listen((event) {
      event.when(showError: (message) {
        print(message);
        // 스낵바 만들어서 에러 표시
        final snackBar = SnackBar(content: Text(message));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    // 계속 리슨을 하면 안되니 dispose할 때 구독 해제
    _eventSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        title: const Text('이미지 검색 앱'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                  hintText: '검색어를 입력하세요',
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () async {
                        viewModel.fetch(_controller.text);
                      },
                      icon: const Icon(Icons.search))),
            ),
          ),
          // Consumer를 사용하면 변경사항을 알려줌으로써 UI를 새로 렌더링 << 성능을 우선하여 특정 부분만 재렌더링 하는 방법이긴 한데
          // 그냥 굳이 이렇게 안하고 뭐 전체적으로 viewModel을 watch하면서 페이지 전체 재렌더링해도 크게 성능 빠르기 때문에 가독성을 우선시 하는지 선택
          Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: viewModel.photos.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  return PhotoCard(photo: viewModel.photos[index]);
                }),
          ),
        ],
      ),
    );
  }
}
