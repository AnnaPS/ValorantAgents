import 'package:flutter/material.dart';
import 'package:valorantAgents/data/character.dart';
import 'package:valorantAgents/styles/guidestyle.dart';
import 'package:valorantAgents/widgets/character_widget.dart';

class ValorantAgentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 58.0),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0, left: 32.0),
              child: Text(
                'Valorant Agents',
                style: AppTheme.display1,
              ),
            ),
            ListView.separated(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 140),
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return CharacterWidget(
                  character: characteres[index],
                );
              },
              itemCount: characteres.length,
              separatorBuilder: (_, __) => SizedBox(width: 26.0),
            ),
          ],
        ),
      ),
    );
  }
}
