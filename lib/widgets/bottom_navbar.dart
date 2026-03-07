import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedTab;
  final ValueChanged<int> onTabChanged;

  const BottomNavBar({
    super.key,
    required this.selectedTab,
    required this.onTabChanged,
  });

  static const List<Map<String, dynamic>> _tabs = [
    {'icon': Icons.person_outline, 'label': 'حسابي'},
    {'icon': Icons.favorite_outline, 'label': 'المفضلة'},
    {'icon': Icons.explore, 'label': 'استكشاف'},
    {'icon': Icons.home_outlined, 'label': 'الرئيسية'},
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 16,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(_tabs.length, (i) {
                final isSelected = i == selectedTab;
                return GestureDetector(
                  onTap: () => onTabChanged(i),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xFF1565C0)
                              : Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          _tabs[i]['icon'] as IconData,
                          color: isSelected ? Colors.white : Colors.grey,
                          size: 22,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        _tabs[i]['label'] as String,
                        style: TextStyle(
                          fontSize: 11,
                          color: isSelected
                              ? const Color(0xFF1565C0)
                              : Colors.grey,
                          fontWeight: isSelected
                              ? FontWeight.w600
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}