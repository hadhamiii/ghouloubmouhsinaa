// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/data/model/categoriesmodel.dart';

List<CategoriesModel> Categorielist = [
  CategoriesModel(
    categoriesImage: const Icon(
      Icons.mosque_outlined,
      color: AppColor.kPrimaryColor,
      size: 30,
    ),
    categoriesName: "المعهد",
  ),
  CategoriesModel(
    categoriesImage: const Icon(
      Icons.house,
      color: AppColor.kPrimaryColor,
      size: 30,
    ),
    categoriesName: "البيت",
  ),
  CategoriesModel(
    categoriesImage: const Icon(
      Icons.local_hospital_outlined,
      color: AppColor.kPrimaryColor,
      size: 30,
    ),
    categoriesName: "المستشفى",
  )
];
