import 'package:flutter/material.dart';
import 'package:flutter_ramen/resources/text_styles.dart';

class TabItemWidget extends StatelessWidget {
  const TabItemWidget({
    super.key,
    required this.label,
    required this.iconActive,
    required this.iconInactive,
    required this.isActive,
  });

  final String label;
  final String iconActive;
  final String iconInactive;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Column(
        children: [
          const SizedBox(height: 6.0),
          Image.asset(isActive ? iconActive : iconInactive),
          const SizedBox(height: 2.0),
          Text(
            label,
            style: tsMedium500.copyWith(fontSize: 12.0),
            textAlign: TextAlign.center,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
