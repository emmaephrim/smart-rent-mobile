import 'package:flutter/material.dart';
import 'package:smart_rent_mobile/core/theme/app_gradients.dart';
import 'package:smart_rent_mobile/core/theme/app_text_styles.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(
                isLoggedIn: isLoggedIn,
                userName: "Emmanuel",
                role: "RENTER",
                location: "Cape Coast, Ghana",
              ),

              const SizedBox(height: 15),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "What can you rent?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              // const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CategoryGrid(),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
