// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatefulWidget {
  const pointsCounter({Key? key}) : super(key: key);

  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$teamAPoints',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints = teamAPoints + 2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    indent: 50,
                    endIndent: 50,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$teamBPoints',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: Size(150, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
