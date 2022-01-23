import 'package:flutter/material.dart';
import 'package:valorantAgents/ui/valorant_agent_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Valorant Agents',
      theme: ThemeData.dark(),
      home: ValorantAgentScreen(),
    );
  }
}
