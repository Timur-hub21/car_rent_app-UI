import 'package:car_rent/style/colors.dart';
import 'package:flutter/material.dart';

Widget search_bar() {
  return TextField(
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.black12,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(30.0),
      ),
      hintText: "Search for car model",
      prefixIcon: Icon(Icons.search, color: AppColor.primaryColor),
      contentPadding: const EdgeInsets.all(0.0),
    ),
    style: const TextStyle(color: Colors.black87),
  );
}
