
import 'package:favorite_places/model/place.dart';
import 'package:flutter/material.dart';

class PlaceDetailsScreen extends StatelessWidget {
  const PlaceDetailsScreen({super.key, required this.place});
  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: Stack(
        children: [
          if (place.image != null)
            Image.file(
              place.image!,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            )
        ],
      ),
    );
  }
}
