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
      colors: [Colors.blue.shade300, Colors.grey.shade600]),
  Character(
      name: "Phoenix",
      imagePath: "images/Phoenix.png",
      description:
          "Los poderes estelares de Phoenix salen a relucir con su estilo de combate, que prende fuego al campo de batalla de forma deslumbrante. Con apoyo o en solitario, él es quien decide cuándo y cómo se lucha.",
      colors: [Colors.orange.shade200, Colors.deepOrange.shade400]),
  Character(
      name: "Breach",
      imagePath: "images/Breach.png",
      description:
          "Breach dispara fuertes y estruendosos ataques sobre areas enemigas que deja despejadas. El daño y la destrucción que deja a su paso inclina la balanza de cada enfrentamientos hacia su equipo.",
      colors: [Colors.red.shade200, Colors.red.shade600]),
  Character(
      name: "Cypher",
      imagePath: "images/Cypher.png",
      description:
          "Cypher se especializa en redes de vigilancia y es capaz de seguirle la pista al enemigo constantemente. No hay secreto a salvo ni maniobra que pase desapercibida. Cypher siempre está alerta.",
      colors: [Colors.grey.shade200, Colors.black87]),
  Character(
      name: "Omen",
      imagePath: "images/Omen.png",
      description:
          "Omen acecha entre las sombras. Es capaz de cegar al enemigo, teleportarse a través del campo de batalla y sembrar el caos y la paranoia mientras sus rivales se preguntan dónde atacará la próxima vez.",
      colors: [Colors.blue.shade200, Colors.deepPurple.shade600]),
  Character(
      name: "Raze",
      imagePath: "images/Raze.png",
      description:
          "A Raze le encantan los explosivos. Con su estilo de juego basado en la fuerza bruta, destaca a la hora de barrer a grupos de enemigos atrincherados y de despejar áreas estrechas con explosivos y sin compasión.",
      colors: [Colors.orange.shade400, Colors.green.shade800]),
  Character(
      name: "Reyna",
      imagePath: "images/Reyna.png",
      description:
          "Desde el corazón de México, Reyna llega para dominar los duelos uno contra uno y cada asesinato que realiza aumenta su poder. Su letalidad solo está limitada por tu destreza al usarla, por lo que su eficacia dependerá mucho de ello.",
      colors: [Colors.purple.shade200, Colors.black87]),
  Character(
      name: "Sage",
      imagePath: "images/Sage.png",
      description:
          "El bastión de China. Sage proporciona seguridad para sí misma y para su equipo en cualquier lugar. Gracias a su capacidad de revivir a sus compañeros caídos y evitar ataques agresivos, les da un lugar de protección en medio de la caótica pelea.",
      colors: [Colors.lightGreen.shade400, Colors.blue.shade300]),
  Character(
      name: "Sova",
      imagePath: "images/Sova.png",
      description:
          "Proveniente de la tundra del eterno invierno de Rusia. Sova rastrea, encuentra y elimina a sus enemigos con gran eficiencia y precisión. Su arco personalizado y sus increíbles habilidades de exploración impedirán que sus enemigos puedan esconderse de él.",
      colors: [Colors.yellow.shade200, Colors.blueAccent.shade400]),
  Character(
      name: "Viper",
      imagePath: "images/Viper.png",
      description:
          "Química estadounidense, Viper despliega varios artefactos químicos venenosos para controlar el campo de batalla y afectar la visión de los enemigos. Si las toxinas no asesinan a su presa, sin duda lo harán sus juegos mentales.",
      colors: [Colors.grey.shade900, Colors.greenAccent.shade400]),
];
