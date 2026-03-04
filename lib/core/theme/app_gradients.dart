import 'package:flutter/material.dart';
import 'package:smart_rent_mobile/core/theme/app_colors.dart';

class AppGradients {
  static const LinearGradient mainBackground = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.backgroundLight, AppColors.primaryLight],
  );
}
