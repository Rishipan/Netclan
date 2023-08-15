import 'package:flutter/material.dart';
import 'package:test_/models/search_bar.dart';

class Professional extends StatefulWidget {
  const Professional({super.key});

  @override
  State<Professional> createState() => _ProfessionalState();
}

class _ProfessionalState extends State<Professional> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: const [
              MySearchBar(),
              SizedBox(
                height: 300,
              ),
              Text('Professional'),
            ],
          ),
        ),
      ),
    );
  }
}
