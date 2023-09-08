import 'package:flutter/material.dart';

import '../../../model/lorem.dart';

class DetailPage extends StatelessWidget {
  final Lorem lorem;

  const DetailPage({super.key, required this.lorem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Text(
                lorem.title,
                style:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(lorem.content)
            ],
          ),
        ),
      ),
    );
  }
}