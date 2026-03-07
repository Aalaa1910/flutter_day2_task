import 'package:flutter/material.dart';

class ToggleBtn extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isGrid;
  final bool isGridView;
  final VoidCallback onTap;

  const ToggleBtn({
    super.key,
    required this.label,
    required this.icon,
    required this.isGrid,
    required this.isGridView,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isActive = isGridView == isGrid;
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.all(4),
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: isActive ? const Color(0xFF1565C0) : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 18, color: isActive ? Colors.white : Colors.grey),
              const SizedBox(width: 6),
              Text(
                label,
                style: TextStyle(
                  color: isActive ? Colors.white : Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}