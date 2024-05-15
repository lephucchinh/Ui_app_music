import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final String name;
  final String asset;
  final String song;
  const ItemList({super.key, required this.name, required this.asset, required this.song});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(name),
        leading: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50)
          ),
          child: Image.asset(asset),
        ),
        trailing: Text(song),
      ),
    );
  }
}
