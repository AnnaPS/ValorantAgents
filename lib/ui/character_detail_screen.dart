import 'package:flutter/material.dart';
import 'package:valorantAgents/data/character.dart';
import 'package:valorantAgents/styles/guidestyle.dart';

class CharacterDetailScreen extends StatefulWidget {
  final Character character;
  CharacterDetailScreen({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  _CharacterDetailScreenState createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: 'background - ${widget.character.name}',
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: widget.character.colors,
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 28.0,
                    left: 16.0,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.white.withOpacity(0.9),
                    ),
                    iconSize: 30,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Hero(
                    tag: 'image - ${widget.character.name}',
                    child: Image.asset(
                      (widget.character.imagePath),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32.0, vertical: 8.0),
                  child: Hero(
                    tag: 'name - ${widget.character.name}',
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        child: Text(
                          widget.character.name,
                          style: AppTheme.heading,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 8, 8, 16),
                  child: Text(
                    widget.character.description,
                    style: AppTheme.suHeading,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
