import 'package:flutter/material.dart';
import 'package:test_/models/individual.dart';
import 'package:test_/models/merchant.dart';
import 'package:test_/models/professional.dart';
import 'package:test_/screens/refine_screen.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 6, 46, 51),
          leadingWidth: 60,
          elevation: 3,
          leading: const Icon(
            Icons.menu_sharp,
            color: Colors.white,
            size: 40,
          ),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 3),
                      child: Text(
                        'Explore',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 3),
                      child: Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    Text(
                      'Sen Fransico, California',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RefineScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: const Color.fromARGB(255, 6, 46, 51),
                ),
                child: Column(
                  children: const [
                    Icon(
                      Icons.checklist_rtl,
                      size: 30,
                    ),
                    Text(
                      'Refine',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.white54,
            tabs: [
              Tab(
                child: Text(
                  'Individual',
                  textAlign: TextAlign.center,
                ),
              ),
              Tab(
                child: Text(
                  'Professional',
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.visible,
                ),
              ),
              Tab(
                child: Text(
                  'Merchant',
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Individual(),
            Professional(),
            Merchant(),
          ],
        ),
      ),
    );
  }
}
