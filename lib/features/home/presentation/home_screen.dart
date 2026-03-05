import 'package:flutter/material.dart';
import 'package:smart_rent_mobile/core/theme/app_text_styles.dart';
import 'package:smart_rent_mobile/features/home/presentation/widgets/category_grid.dart';
import 'package:smart_rent_mobile/features/home/presentation/widgets/home_header.dart';

class HomeScreen extends StatelessWidget {
  final bool isLoggedIn;

  const HomeScreen({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(
              isLoggedIn: isLoggedIn,
              userName: isLoggedIn ? "Emmanuel" : null,
              role: isLoggedIn ? "Renter" : null,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("What can you rent?", style: AppTextStyles.headline2),
                  const SizedBox(height: 16),
                  const CategoryGrid(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
