import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var arrIcons = [
  CustomIcon(icon: Icons.favorite),
  CustomIcon(icon: Icons.favorite),
  CustomIcon(icon: Icons.favorite),
  CustomIcon(icon: Icons.favorite),
  CustomIcon(icon: Icons.favorite),
];
var arrSkills = [
  "Reading skills",
  "Speaking skills",
  "Problem Solving skills",
  "Drawing skills",
  "Leadership skills"
];


Widget CustomIcon({
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
