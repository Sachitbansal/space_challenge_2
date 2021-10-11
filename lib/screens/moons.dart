import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_challenge/widgets/about.dart';
import 'package:space_challenge/widgets/graph.dart';
import 'package:space_challenge/widgets/table.dart';

import '../constants.dart';
import '../widgets/custom_pageroute.dart';
import '../data.dart';
import 'detail_page.dart';
import '../widgets/drawer_list_card.dart';

class Moons extends StatefulWidget {
  @override
  _MoonsState createState() => _MoonsState();
}

class _MoonsState extends State<Moons> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: drawer,
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [gradientStartColor, gradientEndColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.3, 0.7],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            'Moons',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 44,
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      Builder(
                        builder: (context) {
                          return IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.bars,
                              color: Colors.white,
                              size: 35,
                            ),
                            onPressed: () => Scaffold.of(context).openDrawer(),
                          );
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width * .9,
                  padding: const EdgeInsets.all(10),
                  decoration: kDecorattion,
                  child: Column(
                    children: const [
                      About(
                        'Moons – also known as natural satellites – orbit planets and asteroids in our solar system. Earth has one moon, and there are more than 200 moons in our solar system. Most of the major planets – all except Mercury and Venus – have moons. Pluto and some other dwarf planets, as well as many asteroids, also have small moons. Saturn and Jupiter have the most moons, with dozens orbiting each of the two giant planets.',
                      ),
                    ],
                  ),
                ),
                space,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        'Gallery',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple[100],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                space,
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: SizedBox(
                    height: 250,
                    child: ListView.builder(
                        itemCount: moon_galary.length,
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
                                  moon_galary[index].link,
                                  fit: BoxFit.cover,
                                )),
                          );
                        }),
                  ),
                ),
                space,
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Graph(),
                ),
                space,
                Container(
                    width: size.width * .9,
                    padding: const EdgeInsets.all(10),
                    decoration: kDecorattion,
                    child: const About(
                        'Moons come in many shapes, sizes, and types. A few have atmospheres and even hidden oceans beneath their surfaces. Most planetary moons probably formed from the discs of gas and dust circulating around planets in the early solar system, though some are "captured" objects that formed elsewhere and fell into orbit around larger worlds.')),
                space,
                Container(
                  width: size.width * .9,
                  padding: const EdgeInsets.all(10),
                  decoration: kDecorattion,
                  child: const About(
                      'The lunar phase or Moon phase is the shape of the Moon\'s directly sunlit portion as viewed from Earth. The lunar phases gradually change over a synodic month (about 29.53 days) as the Moon\'s orbital positions around Earth and Earth around the Sun shift. The visible side of the moon is variously sunlit, depending on the position of the Moon in its orbit. Thus, this face\'s sunlit portion can vary from 0% (at new moon) to 100% (at full moon). Each of the four "intermediate" lunar phases (see below) is approximately 7.4 days, with slight variation due to the Moon\'s orbit\'s elliptical shape.'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
