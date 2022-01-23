import 'package:flutter/material.dart';
import 'package:valorantAgents/data/character.dart';
import 'package:valorantAgents/styles/guidestyle.dart';
import 'package:valorantAgents/ui/character_detail_screen.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;

  const CharacterWidget({
    Key? key,
    required this.character,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .75,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: const Duration(
                milliseconds: 350,
              ),
              pageBuilder: (context, _, __) => CharacterDetailScreen(
                character: character,
              ),
            ),
          );
        },
        child: Stack(
          children: [
            Hero(
              tag: 'background - ${character.name}',
              child: ClipPath(
                clipper: CharacterCardBackgroundClipper(),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: character.colors,
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: -15,
              top: 0.0,
              bottom: 40.0,
              child: Hero(
                tag: 'image - ${character.name}',
                child: Image.asset(
                  character.imagePath,
                ),
              ),
            ),
            Positioned(
              bottom: 50.0,
              left: 40.0,
              child: Text(
                character.name,
                style: AppTheme.heading,
              ),
            )
          ],
        ),
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
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
