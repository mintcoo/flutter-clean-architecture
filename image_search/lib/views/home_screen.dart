import 'package:flutter/material.dart';
import 'package:image_search/data/api/api_service.dart';
import 'package:image_search/models/photo_model.dart';
import 'package:image_search/widgets/photo_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PhotoModel> _photos = [];
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
                        final result =
                            await PixabayApi.getPhotos(_controller.text);
                        setState(() {
                          _photos = result;
                        });
                      },
                      icon: const Icon(Icons.search))),
            ),
          ),
          Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: _photos.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  return PhotoCard(photo: _photos[index]);
                }),
          )
        ],
      ),
    );
  }
}
