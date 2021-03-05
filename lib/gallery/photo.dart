import 'package:devsteam_mobi_test_applcation/models/row_data_model.dart';
import 'package:flutter/material.dart';

class PhotoPage extends StatefulWidget
{
  @override
  _PhotoPageState createState()=> _PhotoPageState();
}
class _PhotoPageState extends State<PhotoPage>
{
  @override
  Widget build(BuildContext context) {
    final rowDataModel data=ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title:Text("Author:\n"+data.author),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Image.network(data.imageUrl,height: MediaQuery.of(context).size.height,width:MediaQuery.of(context).size.width ,),
    );
  }
}