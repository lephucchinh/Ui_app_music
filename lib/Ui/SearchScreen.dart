import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Search songs",
            style:
                TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide())),
                    )),
                    SizedBox(width: 10,),
                    MaterialButton(
                      minWidth: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                        onPressed: () {},
                      child: Icon(Icons.search),
                      color: Colors.grey,
                        ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
