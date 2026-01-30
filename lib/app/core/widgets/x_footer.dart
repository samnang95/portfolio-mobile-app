import 'package:flutter/material.dart';
import 'package:portfolio_app/app/core/constants/app_colors.dart';

class XFooter extends StatelessWidget {
  const XFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 20,
      decoration: BoxDecoration(color: AppColors.bgColors),
      child: Center(
        // child: Text(),
      ),
    );
  }
}
