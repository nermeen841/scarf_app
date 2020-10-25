import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        ///TODO: CREATE SEARCHBAR IN APPBAR
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 150),
        child: Center(
          child: Column(
            children: [
              Icon(
                MaterialCommunityIcons.file_search,
                color: Colors.orangeAccent,
                size: 100,
              ),
              Text(" No Result", style: TextStyle(fontSize: 28, color: Colors.orangeAccent),),
              Text('Try a more general \n Keyword',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.orangeAccent),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
