import 'package:flutter/widgets.dart';
import 'package:smart_rent_mobile/features/home/domain/entities/category.dart';
import 'package:smart_rent_mobile/features/home/presentation/widgets/category_card.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      ("assets/images/categories/properties.png", "Properties"),
      ("assets/images/categories/short_stay.png", "Short Stay"),
      ("assets/images/categories/vehicles.png", "Vehicles"),
      ("assets/images/categories/equipments.png", "Equipments"),
      ("assets/images/categories/event_spaces.png", "Event Spaces"),
      ("assets/images/categories/services.png", "Services"),
      ("assets/images/categories/fashion.png", "Fashion"),
      ("assets/images/categories/furniture.png", "Furniture"),
      ("assets/images/categories/more.png", "View More"),
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: categories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 6,
        crossAxisSpacing: 5,
        childAspectRatio: 0.85,
      ),
      itemBuilder: (context, index) {
        final item = categories[index];

        return CategoryCard(image: item.$1, label: item.$2, onTap: () {});
      },
    );
  }
}
