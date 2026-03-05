import 'package:flutter/material.dart';
import 'package:smart_rent_mobile/core/theme/app_colors.dart';
import 'package:smart_rent_mobile/core/theme/app_gradients.dart';
import 'package:smart_rent_mobile/core/theme/app_text_styles.dart';

// TODO: difference between imports with  package: imports  and the one without package, just path
class HomeHeader extends StatelessWidget {
  final bool isLoggedIn;
  final String? userName;
  final String? role;

  const HomeHeader({
    super.key,
    required this.isLoggedIn,
    this.userName,
    this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: const BoxDecoration(gradient: AppGradients.mainBackground),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/brandmark.png", height: 40),
              Row(
                children: [
                  const Icon(Icons.notifications_none, size: 28),
                  const SizedBox(width: 12),
                  CircleAvatar(
                    backgroundColor: AppColors.primary,
                    child: isLoggedIn
                        ? Text(
                            userName![0].toUpperCase(),
                            style: const TextStyle(color: Colors.white),
                          )
                        : const Icon(Icons.person, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Greeting Tagline
          if (isLoggedIn)
            (Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Afternoon, $userName 👋🏾",
                  style: AppTextStyles.headline2,
                ),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.tagBackground,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    role ?? "",
                    style: const TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ))
          else
            Text(
              "Find Anything. Rent Anywhere",
              style: AppTextStyles.headline1,
            ),

          const SizedBox(height: 14),

          /// Search Bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 8,
                ),
              ],
            ),
            child: const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.search),
                hintText: "Search properties, vehicles...",
                border: InputBorder.none,
              ),
            ),
          ),

          if (!isLoggedIn)
            (Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  TextButton(onPressed: () {}, child: const Text("Sign In")),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Create Account"),
                  ),
                ],
              ),
            )),
        ],
      ),
    );
  }
}
