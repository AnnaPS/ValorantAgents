import 'package:flutter/material.dart';
import 'package:valorantAgents/styles/guidestyle.dart';
import 'package:valorantAgents/widgets/character_widget.dart';

class ValorantAgentScreen extends StatefulWidget {
  @override
  _ValorantAgentsScreenState createState() => _ValorantAgentsScreenState();
}

class _ValorantAgentsScreenState extends State<ValorantAgentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 32.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Agentes Valorant", style: AppTheme.display1),
                  ],
                ),
              ),
            ),
            Expanded(child: CharacterWidget())
          ],
        ),
      ),
    );
  }
}
