import 'package:flutter/material.dart';

class BackgroundImageCover extends StatelessWidget {
  final String imagePath;

  const BackgroundImageCover({
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath),
        ),
      ),
    );
  }
}
