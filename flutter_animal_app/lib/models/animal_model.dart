import 'package:flutter/material.dart';

class Animal {
  final String name;
  final String scientificName;
  final List<String> location;
  final List<Color> colors;
  final String skinType;
  final String topspeed;
  final String lifespan;
  final String weight;
  final String length;
  final String group;
  final List<String> habitat;
  final List<String> habitatImageUrl;
  final String lifeStyle;
  final List<String> food;
  final List<String> foodImageUrl;
  final String imageUrl;
  final String population;
  final String fact;

  Animal(
      {required this.name,
      required this.scientificName,
      required this.location,
      required this.colors,
      required this.skinType,
      required this.topspeed,
      required this.lifespan,
      required this.weight,
      required this.length,
      required this.group,
      required this.habitat,
      required this.habitatImageUrl,
      required this.lifeStyle,
      required this.food,
      required this.foodImageUrl,
      required this.imageUrl,
      required this.population,
      required this.fact});
}
