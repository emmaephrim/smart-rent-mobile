import 'package:flutter/material.dart';
import 'package:smart_rent_mobile/core/theme/app_colors.dart';
import 'package:smart_rent_mobile/core/theme/app_text_styles.dart';

// TODO: difference between imports with  package: imports  and the one without package, just path
class HomeHeader extends StatelessWidget {
  final bool isLoggedIn;
  final String? userName;
  final String? location;
  final String? role;

  const HomeHeader({
    super.key,
    required this.isLoggedIn,
    this.userName,
    this.location,
    this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 40, 20, 25),
      decoration: BoxDecoration(
        color: AppColors.headerBackground,
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
            color: Colors.black.withOpacity(0.5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// TOP ROW
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// BRAND
              Row(
                children: [
                  Image.asset("assets/images/logo.png", height: 40),
                  const SizedBox(width: 10),
                  const Text(
                    "Smart Rent",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              /// NOTIFICATION + PROFILE
              Row(
                children: [
                  Stack(
                    children: [
                      const Icon(Icons.notifications_none, size: 28),
                      Positioned(
                        right: 2,
                        top: 2,
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration: const BoxDecoration(
                            color: AppColors.info,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(width: 15),

                  CircleAvatar(
                    radius: 22,
                    backgroundColor: AppColors.primary,
                    child: isLoggedIn
                        ? Text(
                            userName![0],
                            style: const TextStyle(color: Colors.white),
                          )
                        : const Icon(Icons.person, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 20),

          /// GREETING / TAGLINE
          if (isLoggedIn) ...[
            Text("Good morning ☀️,", style: AppTextStyles.bodyMedium),

            const SizedBox(height: 2),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  userName ?? "",
                  style: AppTextStyles.headline2.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // const SizedBox(width: 40),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.mainTagBackground,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    role ?? "",
                    style: const TextStyle(
                      color: AppColors.primaryDark,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 6),

            Row(
              children: [
                const Icon(Icons.location_on, size: 16, color: AppColors.info),
                const SizedBox(width: 6),
                Text(
                  location ?? "",
                  style: const TextStyle(
                    color: AppColors.info,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ] else ...[
            Text(
              "Find Anything.\nRent Anywhere....",
              style: AppTextStyles.headline2.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.tagBackground,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "GUEST",
                    style: TextStyle(
                      color: AppColors.primaryDark,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(width: 15),

                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],

          const SizedBox(height: 20),

          /// SEARCH BAR
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Row(
              children: [
                Icon(Icons.search, color: Colors.grey),
                SizedBox(width: 10),
                Text(
                  "Search properties, vehicles...",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
