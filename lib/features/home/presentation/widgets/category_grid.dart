import 'package:flutter/widgets.dart';
import 'package:smart_rent_mobile/features/home/domain/entities/category.dart';
import 'package:smart_rent_mobile/features/home/presentation/widgets/category_card.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      const Category(
        title: "Properties",
        imagePath: "assets/images/categories/properties.png",
      ),
      const Category(
        title: "Short Stay",
        imagePath: "assets/images/categories/short_stay.png",
      ),
      const Category(
        title: "Vehicles",
        imagePath: "assets/images/categories/vehicles.png",
      ),
      const Category(
        title: "Equipments",
        imagePath: "assets/images/categories/equipments.png",
      ),
      const Category(
        title: "Event Spaces",
        imagePath: "assets/images/categories/event_spaces.png",
      ),
      const Category(
        title: "Services",
        imagePath: "assets/images/categories/services.png",
      ),
      const Category(
        title: "More",
        imagePath: "assets/images/categories/more.png",
      ),
    ];
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: categories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        final category = categories[index];
        return CategoryCard(
          title: category.title,
          imagePath: category.imagePath,
          onTap: () {
            debugPrint("Tapped ${category.title}");
          },
        );
      },
    );
  }
}
