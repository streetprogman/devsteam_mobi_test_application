import 'package:devsteam_mobi_test_applcation/gallery/gallery_list.dart';
import 'package:devsteam_mobi_test_applcation/gallery/photo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevsTeamTestApp());
}

class DevsTeamTestApp extends StatefulWidget {
  _DevsTeamTestAppState createState() => _DevsTeamTestAppState();
}

class _DevsTeamTestAppState extends State<DevsTeamTestApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue[800],
        canvasColor: Colors.grey,
      ),
      initialRoute: "/gallery",
      routes: {
        '/gallery': (BuildContext context) => GalleryList(),
        '/photo': (BuildContext context) => PhotoPage()
      },
    );
  }
}
