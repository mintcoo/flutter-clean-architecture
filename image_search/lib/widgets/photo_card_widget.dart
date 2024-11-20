import 'package:flutter/material.dart';
import 'package:image_search/models/photo_model.dart';

class PhotoCard extends StatelessWidget {
  final PhotoModel photo;

  const PhotoCard({
    required this.photo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.grey,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(photo.webformatURL),
        ),
      ),
    );
  }
}
