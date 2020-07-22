import 'package:flutter/material.dart';
import 'package:valorantAgents/screens/valorant_agent_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Valorant Agents',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(elevation: 0, color: Colors.white)),
      home: ValorantAgentScreen(),
    );
  }
}
