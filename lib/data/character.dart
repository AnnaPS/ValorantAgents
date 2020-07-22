import 'package:flutter/material.dart';

class Character {
  final String name;
  final String imagePath;
  final String description;
  final List<Color> colors;

  Character({this.name, this.imagePath, this.description, this.colors});
}

List characteres = [
  Character(
      name: "Jett",
      imagePath: "images/Jett.png",
      description:
          "El estilo de lucha ágil y evasivo de Jett le permite asumir grandes riesgos. En las refriegas, recorre el terreno en círculos y hace trizas a los enemigos con una rapidez espectacular.",
      colors: [Colors.grey.shade300, Colors.grey.shade600]),
  Character(
      name: "Phoenix",
      imagePath: "images/Phoenix.png",
      description:
          "Los poderes estelares de Phoenix salen a relucir con su estilo de combate, que prende fuego al campo de batalla de forma deslumbrante. Con apoyo o en solitario, él es quien decide cuándo y cómo se lucha.",
      colors: [Colors.orange.shade200, Colors.deepOrange.shade400])
];
