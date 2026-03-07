
import 'package:flutter/material.dart';

import '../../models/place_model.dart';
import '../landmark_grid_card.dart';

class LandmarksGridView extends StatelessWidget {
  final List<Landmark> landmarks;
  final ValueChanged<int> onFavoriteTap;

  const LandmarksGridView({
    super.key,
    required this.landmarks,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.72,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: landmarks.length,
      itemBuilder: (context, index) => LandmarkGridCard(
        landmark: landmarks[index],
        onFavoriteTap: () => onFavoriteTap(index),
      ),
    );
  }
}