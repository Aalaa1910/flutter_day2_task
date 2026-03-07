
import 'package:flutter/material.dart';

import '../models/place_model.dart';
import '../widgets/bottom_navbar.dart';
import '../widgets/discover_body/landmarks_gridview.dart';
import '../widgets/discover_body/landmarks_listview.dart';
import '../widgets/landmark_card.dart';
import '../widgets/landmark_grid_card.dart';
import '../widgets/top_bar/app_bar.dart';
import '../widgets/top_bar/buildView_Toggle.dart';


class LandmarksScreen extends StatefulWidget {
  const LandmarksScreen({super.key});

  @override
  State<LandmarksScreen> createState() => _LandmarksScreenState();
}

class _LandmarksScreenState extends State<LandmarksScreen> {


  bool _isGridView = false;
  int _selectedTab = 2; // Explore tab active

  void _toggleFavorite(int index) {
    setState(() {
      landmarks[index].isFavorite = !landmarks[index].isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F5F5),
        body: SafeArea(
          child: Column(
            children: [
              BuildAppBar(),
              ViewToggle(
                isGridView: _isGridView,
                onToggle: (value) => setState(() => _isGridView = value),
              ),
              Expanded(
                child: _isGridView
                    ? LandmarksGridView(
                  landmarks: landmarks,
                  onFavoriteTap: _toggleFavorite,
                )
                    : LandmarksListView(
                  landmarks: landmarks,
                  onFavoriteTap: _toggleFavorite,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar:  BottomNavBar(
        selectedTab: _selectedTab,
        onTabChanged: (i) => setState(() => _selectedTab = i),
      ),
      ),
    );
  }




}