import 'package:flutter/material.dart';
import 'package:learning_flutter/screens/screens.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int currentPage = 0;
  List<Widget> screens = const [HomeScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
      ),
      body: screens[currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint('Floating Action Button'),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        onDestinationSelected: (int index) =>
            setState(() => currentPage = index),
        selectedIndex: currentPage,
      ),
    );
  }
}
