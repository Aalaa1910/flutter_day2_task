import 'package:flutter/material.dart';
import 'package:untitled1/widgets/top_bar/toggle_button.dart';

class ViewToggle extends StatelessWidget {
  final bool isGridView;
  final ValueChanged<bool> onToggle;

  const ViewToggle({
    super.key,
    required this.isGridView,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            ToggleBtn(
              label: 'شبكة',
              icon: Icons.grid_view_rounded,
              isGrid: true,
              isGridView: isGridView,
              onTap: () => onToggle(true),
            ),
            ToggleBtn(
              label: 'قائمة',
              icon: Icons.view_list_rounded,
              isGrid: false,
              isGridView: isGridView,
              onTap: () => onToggle(false),
            ),
          ],
        ),
      ),
    );
  }
}