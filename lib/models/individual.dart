import 'package:flutter/material.dart';
import 'package:test_/models/box.dart';
import 'package:test_/models/search_bar.dart';

class Individual extends StatefulWidget {
  const Individual({super.key});

  @override
  State<Individual> createState() => _IndividualfessionalState();
}

class _IndividualfessionalState extends State<Individual> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            MySearchBar(),
            Box(),
            Box(),
            Box(),
            Box(),
          ],
        ),
      ),
    );
  }
}
