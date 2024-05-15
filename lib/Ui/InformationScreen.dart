import 'package:app_music/Data/musicianData.dart';
import 'package:app_music/Ui/widget/itemList.dart';
import 'package:flutter/material.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information musician',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold)),
      ),
      body: ListView.builder(
        itemCount: MusicianData.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ItemList(
                  name: MusicianData[index]["name"],
                  asset: MusicianData[index]["asset"],
                  song: MusicianData[index]["song"]),
              Divider()
            ],
          );
        },
      ),
    );
  }
}
