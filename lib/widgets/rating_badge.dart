import 'package:flutter/material.dart';

class RatingBadge extends StatelessWidget {
  final double rating;
  final bool small;

  const RatingBadge({required this.rating, this.small = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: small ? 6 : 8,
        vertical: small ? 3 : 5,
      ),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.65),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            rating.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: small ? 11 : 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 3),
          Icon(Icons.star, color: Colors.amber, size: small ? 12 : 14),
        ],
      ),
    );
  }
}