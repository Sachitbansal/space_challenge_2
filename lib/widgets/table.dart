import 'package:flutter/material.dart';

import '../constants.dart';

class SensorTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DataTable(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: const Color(0xFF6A1B9A), width: 2),
          color: Colors.purple[50]),
      columns: const [
        DataColumn(
            label: Text(
              'Planets',
              style: kTableHeader,
            )),
        DataColumn(label: Text('Temp', style: kTableHeader,),),
      ],
      rows: [
        DataRow(cells: [
          DataCell(
              Text('Mercury', style: kTableHeader.copyWith(fontSize: 20))),
          DataCell(Text('800°F (430°C)', style: kTableHeader.copyWith(fontSize: 20))),
        ]),
        DataRow(cells: [
          DataCell(Text('Venus',
              style: kTableHeader.copyWith(fontSize: 20))),
          DataCell(Text('880°F (471°C)', style: kTableHeader.copyWith(fontSize: 20))),
        ]),
        DataRow(cells: [
          DataCell(
              Text('Earth', style: kTableHeader.copyWith(fontSize: 20))),
          DataCell(Text(' 61°F (16°C)', style: kTableHeader.copyWith(fontSize: 20))),
        ]),
        DataRow(cells: [
          DataCell(Text('Mars', style: kTableHeader.copyWith(fontSize: 20))),
          DataCell(Text('- 20°F (-28°C)', style: kTableHeader.copyWith(fontSize: 20))),
        ]),
        DataRow(cells: [
          DataCell(Text('Jupiter', style: kTableHeader.copyWith(fontSize: 20))),
          DataCell(Text('- 162°F (-108°C)', style: kTableHeader.copyWith(fontSize: 20))),
        ]),
        DataRow(cells: [
          DataCell(Text('Saturn', style: kTableHeader.copyWith(fontSize: 20))),
          DataCell(Text('- 218°F (-138°C)', style: kTableHeader.copyWith(fontSize: 20))),
        ]),
        DataRow(cells: [
          DataCell(Text('Uranus', style: kTableHeader.copyWith(fontSize: 20))),
          DataCell(Text('- 320°F (-195°C)', style: kTableHeader.copyWith(fontSize: 20))),
        ]),
        DataRow(cells: [
          DataCell(Text('Neptune', style: kTableHeader.copyWith(fontSize: 20))),
          DataCell(Text('- 331°F (-201°C)', style: kTableHeader.copyWith(fontSize: 20))),
        ]),
        DataRow(cells: [
          DataCell(Text('Pluto', style: kTableHeader.copyWith(fontSize: 20))),
          DataCell(Text('-387°F (-232°C)', style: kTableHeader.copyWith(fontSize: 20))),
        ]),
      ],
    );
  }
}
