import 'package:flutter/material.dart';
import 'package:test_/models/search_bar.dart';

class Merchant extends StatefulWidget {
  const Merchant({super.key});

  @override
  State<Merchant> createState() => _MerchantState();
}

class _MerchantState extends State<Merchant> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: const [
            MySearchBar(),
            SizedBox(height: 300),
            Text('Merchant'),
          ]),
        ),
      ),
    );
  }
}
