import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Box extends StatefulWidget {
  const Box({super.key});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 180,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(1, 2)),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 25, top: 5),
                  child: Text(
                    '+ INVITE',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    alignment: Alignment.center,
                    height: 85,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset('assets/images/test.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Narendra Modi',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const Text('Delhi | PM'),
                      const Text(
                        'Within 30 km',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: LinearPercentIndicator(
                          barRadius: const Radius.circular(8),
                          width: 120,
                          lineHeight: 10,
                          percent: 0.3,
                          backgroundColor: Colors.grey,
                          progressColor: const Color.fromARGB(255, 6, 46, 51),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Column(
              children: const [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5, left: 8),
                    child: Text('Cofee | Bussiness | Friendship'),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5, left: 8),
                    child: Text('Hi Community! I am open to new connections'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
