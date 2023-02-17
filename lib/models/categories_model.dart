// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CategoriesModel {
  String label;
  Icon icon;
  CategoriesModel({
    required this.label,
    required this.icon,
  });
}

List<CategoriesModel> categoriesList = [
  CategoriesModel(
    label: "Gadgets",
    icon: const Icon(
      Icons.earbuds_rounded,
      color: Colors.black87,
    ),
  ),
  CategoriesModel(
    label: "Mobile",
    icon: const Icon(
      Icons.smartphone_rounded,
      color: Colors.black87,
    ),
  ),
  CategoriesModel(
    label: "Cloths",
    icon: const Icon(
      Icons.hail_rounded,
      color: Colors.black87,
    ),
  ),
  CategoriesModel(
    label: "Laptops",
    icon: const Icon(
      Icons.laptop_rounded,
      color: Colors.black87,
    ),
  ),
];
