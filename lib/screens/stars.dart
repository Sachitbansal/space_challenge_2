import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:space_challenge/widgets/about.dart';
import '../constants.dart';
import '../data.dart';

class Stars extends StatefulWidget {
  @override
  _StarsState createState() => _StarsState();
}

class _StarsState extends State<Stars> {
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
                            'Stars',
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
                        'Stars are the most widely recognized astronomical objects, and represent the most fundamental building blocks of galaxies. The age, distribution, and composition of the stars in a galaxy trace the history, dynamics, and evolution of that galaxy. Moreover, stars are responsible for the manufacture and distribution of heavy elements such as carbon, nitrogen, and oxygen, and their characteristics are intimately tied to the characteristics of the planetary systems that may coalesce about them. Consequently, the study of the birth, life, and death of stars is central to the field of astronomy.',
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
                Container(
                    width: size.width * .9,
                    padding: const EdgeInsets.all(10),
                    decoration: kDecorattion,
                    child: Column(
                      children: const [
                        Text(
                          'Star Formation',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        About(
                            'Stars are born within the clouds of dust and scattered throughout most galaxies. A familiar example of such as a dust cloud is the Orion Nebula. Turbulence deep within these clouds gives rise to knots with sufficient mass that the gas and dust can begin to collapse under its own gravitational attraction. As the cloud collapses, the material at the center begins to heat up. Known as a protostar, it is this hot core at the heart of the collapsing cloud that will one day become a star. Three-dimensional computer models of star formation predict that the spinning clouds of collapsing gas and dust may break up into two or three blobs; this would explain why the majority the stars in the Milky Way are paired or in groups of multiple stars.'),
                      ],
                    )),
                space,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
