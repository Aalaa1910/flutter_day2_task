import 'package:flutter/material.dart';

import '../../models/place_model.dart';
import '../landmark_card.dart';

class LandmarksListView extends StatelessWidget {
  final List<Landmark> landmarks;
  final ValueChanged<int> onFavoriteTap;

  const LandmarksListView({
    super.key,
    required this.landmarks,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemCount: landmarks.length,
      itemBuilder: (context, index) => LandmarkCard(
        landmark: landmarks[index],
        onFavoriteTap: () => onFavoriteTap(index),
      ),
    );
  }
}

