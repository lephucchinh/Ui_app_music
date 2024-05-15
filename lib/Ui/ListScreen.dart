import 'package:app_music/Data/data.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Songs",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold)),
        ),
        body: SingleChildScrollView(
          child: DataTable(
            columnSpacing: 25,
            columns: [
              DataColumn(label: Text('ID')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Musician')),
              DataColumn(label: Text('Album')),
              DataColumn(label: Text('Type')),
              DataColumn(label: Text('Favorite')),
            ],
            rows: songs.map((song) {
              return DataRow(cells: [
                DataCell(Text(song['id'].toString())),
                DataCell(Text(song['name'])),
                DataCell(Text(song['musician'])),
                DataCell(Text(song['album'])),
                DataCell(Text(song['type'])),
                DataCell(Center(
                  child: Icon(song['favorite']
                      ? Icons.favorite
                      : Icons.favorite_border),
                )),
              ]);
            }).toList(),
          ),
        ));
  }
}
