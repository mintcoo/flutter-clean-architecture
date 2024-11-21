import 'package:flutter/material.dart';
import 'package:image_search/data/api/pixabay_api.dart';
import 'package:image_search/data/photo_provider.dart';
import 'package:image_search/models/photo_model.dart';
import 'package:image_search/widgets/photo_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = PhotoProvider.of(context).viewModel;

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
          StreamBuilder<List<PhotoModel>>(
              // 스트림을 통해 값을 받아와야 함
              stream: viewModel.photoStream,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator();
                }
                final photos = snapshot.data!;

                return Expanded(
                  child: GridView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: photos.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                      ),
                      itemBuilder: (context, index) {
                        return PhotoCard(photo: photos[index]);
                      }),
                );
              })
        ],
      ),
    );
  }
}
