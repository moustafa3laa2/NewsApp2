import 'package:flutter/material.dart';
import 'package:news_app/models/category_mode.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryCardListView extends StatelessWidget {
  const CategoryCardListView({super.key});
  final List<CategoryModel> category = const [
    CategoryModel(
        categoryImage: 'assets/images/business.avif', categoryName: 'business'),
    CategoryModel(
        categoryImage: 'assets/images/entertaiment.avif',
        categoryName: 'entertainment'),
    CategoryModel(
        categoryImage: 'assets/images/general.avif', categoryName: 'general'),
    CategoryModel(
        categoryImage: 'assets/images/health.avif', categoryName: 'health'),
    CategoryModel(
        categoryImage: 'assets/images/science.avif', categoryName: 'science'),
    CategoryModel(
        categoryImage: 'assets/images/sports.avif', categoryName: 'sports'),
    CategoryModel(
        categoryImage: 'assets/images/technology.jpeg',
        categoryName: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: category.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: category[index]);
        },
      ),
    );
  }
}
