import 'package:flutter/material.dart';
import 'package:learning_flutter/screens/screens.dart';

void main() => runApp(const LearningFlutterApp());

class LearningFlutterApp extends StatelessWidget {
  const LearningFlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const RootScreen(),
    );
  }
}
