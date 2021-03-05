import 'package:devsteam_mobi_test_applcation/api/gallery_api.dart';
import 'package:devsteam_mobi_test_applcation/gallery/components.dart';
import 'package:devsteam_mobi_test_applcation/models/row_data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GalleryList extends StatefulWidget {
  @override
  _GalleryListState createState() => _GalleryListState();
}

class _GalleryListState extends State<GalleryList> {
  String text = "";
  List<Widget> photos = new List<Widget>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Future<List<dynamic>> getList() async {
    List<dynamic> list = await getPhotos();
    photos.clear();
    for (final row in list) {
      photos.add(photoRow(
          context,
          new rowDataModel(
              row["urls"]["small"],
              row["user"]["name"],
              row["description"])));
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getList();
  }
  Future<bool> backButtonFunc() {
    _scaffoldKey.currentState.showSnackBar(new SnackBar(content: Container(color: Colors.transparent,child: Text("Don`t touch this button:D"),)));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: backButtonFunc,
      child: Scaffold(
        key:_scaffoldKey,
        appBar: AppBar(title: Text("Gallery!"),centerTitle: true,),
        body: Container(
          color: Colors.transparent,
          child: ListView.builder(
              itemCount: photos.length,
              itemBuilder: (context, i) {
                return photos[i];
              }),
        ),
      ),
    );
  }
}
