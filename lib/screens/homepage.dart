import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_challenge/screens/planets.dart';
import 'package:space_challenge/widgets/about.dart';
import 'package:space_challenge/widgets/custom_pageroute.dart';
import 'package:space_challenge/widgets/graph.dart';
import 'package:space_challenge/widgets/table.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../constants.dart';
import '../data.dart';
import 'moons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(backgroundColor: Colors.purple,),
      drawer: drawer,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  )
                ],
                color: Colors.purple[100],
              ),
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://i.ibb.co/PzZ2wnx/logo.png',
                          ),
                        ),
                        border: Border.all(color: Colors.purple, width: 2),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.purple,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: const Color(0xFF388E3C), width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Unravel',
                                style: TextStyle(
                                    color: Colors.purple[800],
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.italic),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'The Beyond',
                                style: TextStyle(
                                  color: Colors.purple[800],
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            space,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Suggestions',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple[800],
                        ),
                      ),
                    ],
                  ),
                  space,
                  Container(
                    padding: const EdgeInsets.all(9),
                    decoration: kDecorattion,
                    child: Column(
                      children: [
                        const Text(
                          'Planets',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                        const About(
                            'A celestial body which revolves around a particular star in an orbit, and gets all its light from that star, is called a plane'),
                        TextButton(
                          child: Text(
                            'Know More',
                            style: TextStyle(
                                fontSize: 22, color: Colors.blue[800]),
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            CustomPageRoute(
                              child: const Planets(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  space,
                  Container(
                    padding: const EdgeInsets.all(9),
                    decoration: kDecorattion,
                    child: Column(
                      children: [
                        const Text(
                          'Moons',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                        const About(
                            'A natural satellite is in the most common usage, an astronomical body that orbits a planet, dwarf planet, or small solar system body. While natural satellites are often colloquially referred to as moons, there is only the Moon of Earth.'),
                        TextButton(
                          child: Text(
                            'Know More',
                            style: TextStyle(
                                fontSize: 22, color: Colors.blue[800]),
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            CustomPageRoute(
                              child: Moons(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  space,
                  Row(
                    children: [
                      Text(
                        'Gallery',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple[800],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  space,
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                        itemCount: GalaryLinks.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: AspectRatio(
                                aspectRatio: 1,
                                child: Image.network(
                                  GalaryLinks[index].link,
                                  fit: BoxFit.cover,
                                )),
                          );
                        }),
                  ),
                  space,
                  SensorTable(),
                  space,
                  Graph(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

