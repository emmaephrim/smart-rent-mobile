import 'package:flutter/material.dart';
import 'package:smart_rent_mobile/core/theme/app_colors.dart';
import 'package:smart_rent_mobile/core/theme/app_text_styles.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String label;
  final VoidCallback onTap;

  const CategoryCard({
    super.key,
    required this.image,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 99,
            width: 99,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        const SizedBox(height: 6),

        Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
      ],
    );
  }
}
