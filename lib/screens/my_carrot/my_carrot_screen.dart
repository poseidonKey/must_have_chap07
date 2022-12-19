import 'package:flutter/material.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("나의 당근"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(.5),
          child: Divider(
            thickness: .5,
            height: .5,
            color: Colors.red,
          ),
        ),
      ),
      body: ListView(
        children: const [
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
