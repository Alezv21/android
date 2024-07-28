import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
      ),
      body: const Center(
        child: Text(
          'TODO',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
