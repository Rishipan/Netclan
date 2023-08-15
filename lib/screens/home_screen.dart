import 'package:flutter/material.dart';
import 'package:test_/screens/explore_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  static List<Widget> bottomBar = [
    const ExploreScreen(),
    const ExploreScreen(),
    const ExploreScreen(),
    // const ExploreScreen(),
    // const ExploreScreen(),
  ];

  int selectedindex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomBar.elementAt(selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_outlined),
            label: 'Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: 'Chat',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.checklist_rtl_outlined),
          //   label: 'Refine',
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.checklist_rtl_outlined),
          //   label: 'Refine',
          // ),
        ],
        currentIndex: selectedindex,
        selectedItemColor: const Color.fromARGB(255, 6, 46, 51),
        onTap: onItemTapped,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
