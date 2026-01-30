import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class TitleList extends StatelessWidget {
  final String? text;
  final IconData? prefixIcon;
  const TitleList({super.key, this.text, this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (prefixIcon != null)
          Icon(prefixIcon, size: 24, color: AppColors.textColors),
        if (prefixIcon != null) const SizedBox(width: 8),
        Expanded(
          child: Text(
            text ?? "",
            style: const TextStyle(fontSize: 14, color: AppColors.textColors),
          ),
        ),
      ],
    );
  }
}
