import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_challenge/widgets/custom_pageroute.dart';
import 'package:space_challenge/widgets/drawer_list_card.dart';
import 'data.dart';

Color primaryTextColor = const Color(0xFF414C6B);
Color secondaryTextColor = const Color(0xFFE4979E);
Color titleTextColor = Colors.white;
Color contentTextColor = const Color(0xff868686);
Color navigationColor = const Color(0xFF6751B5);
Color gradientStartColor = const Color(0xFF0050AC);
Color gradientEndColor = const Color(0xFF9354B9);

Drawer drawer = Drawer(
  child: Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [Color(0xFFE3F2FD), Color(0xFFBA68C8)],
        begin: Alignment(-1, 0),
        end: Alignment(1, 0),
      ),
    ),
    child: ListView(children: [
      DrawerHeader(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [gradientStartColor, gradientEndColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Astro-Gen',
              textAlign: TextAlign.center,
              style: GoogleFonts.oswald(
                textStyle: const TextStyle(
                    letterSpacing: 1.4, fontSize: 30, color: Colors.white),
              ),
            ),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: NetworkImage('https://i.ibb.co/PzZ2wnx/logo.png'),
                ),
                border: Border.all(color: Colors.blue, width: 2),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFB9F6CA),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Builder(builder: (context) {
        return SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height - 120,
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return DrawerListCard(
                item: drawerinfo[index].item,
                icon: drawerinfo[index].icon,
                press: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: drawerinfo[index].press,
                    ),
                  );
                },
              );
            },
            itemCount: drawerinfo.length,
          ),
        );
      }),
    ]),
  ),
);

Widget space = Builder(builder: (context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .02,
  );
});

final Decoration kDecorattion = BoxDecoration(
  color: Colors.white,
  border: Border.all(color: Colors.purple, width: 2),
  borderRadius: BorderRadius.circular(10),
  boxShadow: const [
    BoxShadow(
      color: Color(0xFFB9F6CA),
      spreadRadius: 1,
      blurRadius: 10,
      offset: Offset(0, 2), // changes position of shadow
    ),
  ],
);

const TextStyle kTableHeader = TextStyle(fontSize: 25, overflow: TextOverflow.fade);

final BoxDecoration kBoxStyle = BoxDecoration(
    border: Border.all(color: Colors.greenAccent, width: 2),
    borderRadius: const BorderRadius.all(Radius.circular(20)),
    boxShadow: const [
      BoxShadow(
        color: Color(0xFFC8E6C9),
        spreadRadius: 3,
        blurRadius: 5,
        offset: Offset(2, 4), // changes position of shadow
      ),
    ],
    color: Colors.white);