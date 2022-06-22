import 'package:flutter/material.dart';

const int itemCount = 20;

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) => ListTile(
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.select_all),
            title: Text('Item ${index + 1}'),
            onTap: () => debugPrint('Item ${index + 1} selected'),
          )),
      itemCount: itemCount,
    );
  }
}
