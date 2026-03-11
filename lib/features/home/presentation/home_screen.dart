import 'package:flutter/material.dart';
import 'package:smart_rent_mobile/core/theme/app_gradients.dart';
import 'package:smart_rent_mobile/features/home/presentation/widgets/category_grid.dart';
import 'package:smart_rent_mobile/features/home/presentation/widgets/home_header.dart';

class HomeScreen extends StatelessWidget {
  final bool isLoggedIn;

  const HomeScreen({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(gradient: AppGradients.mainBackground),
        child: Column(
          // Use a Column to stack the fixed and scrollable parts
          children: [
            // 1. FIXED HEADER (Stays at the top)
            HomeHeader(
              isLoggedIn: isLoggedIn,
              userName: "Emmanuel",
              role: "RENTER",
              location: "Cape Coast, Ghana",
            ),

            // 2. SCROLLABLE AREA
            Expanded(
              // Expanded ensures the scroll view takes up the remaining space
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "What can you rent?",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: CategoryGrid(),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
