import 'package:flutter/material.dart';
import 'package:learning_flutter/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const LearnFlutterScreen(),
            ),
          );
        },
        child: const Text('Learn Flutter'),
      ),
    );
  }
}
