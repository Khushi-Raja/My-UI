import 'package:flutter/material.dart';

var arrIcons = [
  customIcon(icon: Icons.favorite),
  customIcon(icon: Icons.favorite),
  customIcon(icon: Icons.favorite),
  customIcon(icon: Icons.favorite),
  customIcon(icon: Icons.favorite),
];
var arrSkills = [
  "Reading skills",
  "Speaking skills",
  "Problem Solving skills",
  "Drawing skills",
  "Leadership skills"
];


Widget customIcon({
  required IconData icon,
  double? size = 30,
  Color? favColor = Colors.white,
}) {
  return Icon(
    icon,
    color: favColor,
    size: size,
  );
}
