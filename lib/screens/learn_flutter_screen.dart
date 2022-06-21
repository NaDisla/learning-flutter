import 'package:flutter/material.dart';

class LearnFlutterScreen extends StatefulWidget {
  const LearnFlutterScreen({Key? key}) : super(key: key);

  @override
  State<LearnFlutterScreen> createState() => _LearnFlutterScreenState();
}

class _LearnFlutterScreenState extends State<LearnFlutterScreen> {
  bool isSwitch = false;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () => debugPrint('Action AppBar'),
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/einstein_abstract.jpg'),
            const SizedBox(
              height: 10.0,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              color: Colors.blueGrey,
              child: const Center(
                child: Text(
                  'This is a Text Widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.blue : Colors.blueGrey,
              ),
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => debugPrint('This is the row'),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.orange,
                  ),
                  Text('Row Widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (currentSwitch) =>
                  setState(() => isSwitch = currentSwitch),
            ),
            Checkbox(
              value: isChecked,
              onChanged: (currentCheck) =>
                  setState(() => isChecked = currentCheck),
            ),
            Image.network('https://wallpaperaccess.com/full/1909531.jpg'),
          ],
        ),
      ),
    );
  }
}
