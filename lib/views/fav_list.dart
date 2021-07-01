import 'package:flutter/material.dart';

class FavListPage extends StatelessWidget {
  const FavListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite List',
        ),
      ),
      body: PageView(
        controller: PageController(
          initialPage: 1,
          viewportFraction: 0.8,
        ),
        children: [
          _ImageContainer(
            image: 'images/pasta.jpeg',
          ),
          _ImageContainer(
            image: 'images/cream.jpeg',
          ),
          _ImageContainer(
            image: 'images/food3.jpeg',
          ),
        ],
      ),
    );
  }
}

class _ImageContainer extends StatelessWidget {
  final String image;

  const _ImageContainer({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Image.asset(
        image,
        fit: BoxFit.contain,
      ),
    );
  }
}
