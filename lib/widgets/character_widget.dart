import 'package:flutter/material.dart';
import 'package:valorantAgents/data/character.dart';
import 'package:valorantAgents/screens/character_detail_screen.dart';
import 'package:valorantAgents/styles/guidestyle.dart';

class CharacterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 350),
                pageBuilder: (context, _, __) =>
                    CharacterDetailScreen(character: characteres[0])));
      },
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: CharacterCardBackgroundClipper(),
              child: Hero(
                tag: "background - ${characteres[0].name}",
                child: Container(
                  height: 0.55 * screenHeight,
                  width: 0.9 * screenWidth,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: characteres[0].colors,
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.5, -0.5),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: Hero(
                tag: "image - ${characteres[0].name}",
                child: Image.asset(
                  characteres[0].imagePath,
                  height: screenHeight * 0.55,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  characteres[0].name,
                  style: AppTheme.heading,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Click para saber más",
                  style: AppTheme.suHeading,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CharacterCardBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path clippedPath = Path();
    double curveDistance = 40;

    clippedPath.moveTo(0, size.height * 0.4);
    clippedPath.lineTo(0, size.height - curveDistance);
    clippedPath.quadraticBezierTo(
        1, size.height - 1, 0 + curveDistance, size.height);
    clippedPath.lineTo(size.width - curveDistance, size.height);
    clippedPath.quadraticBezierTo(size.width + 1, size.height - 1, size.width,
        size.height - curveDistance);
    clippedPath.lineTo(size.width, 0 + curveDistance);
    clippedPath.quadraticBezierTo(size.width - 1, 0,
        size.width - curveDistance - 5, 0 + curveDistance / 3);
    clippedPath.lineTo(curveDistance, size.height * 0.29);
    clippedPath.quadraticBezierTo(
        1, (size.height * 0.30) + 10, 0, size.height * 0.4);
    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
