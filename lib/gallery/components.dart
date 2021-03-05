import 'package:devsteam_mobi_test_applcation/models/row_data_model.dart';
import 'package:flutter/material.dart';

Widget photoRow(BuildContext context, rowDataModel data) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
    child: Container(
      color: Colors.white,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/photo", (route) => true,
                        arguments: data);
                  },
                  child: Image.network(data.imageUrl),
                ),
                width: MediaQuery.of(context).size.width / 2.1,
                height: 200,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width / 2.1,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(
                    data.author == null || data.author == ""
                        ? "Unknown author"
                        : "Author:\n" + data.author,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )),
              Container(
                alignment: Alignment.center,
                height: 100,
                width: MediaQuery.of(context).size.width / 2.1,
                child: Text(
                  data.description == null || data.description == ""
                      ? "No description"
                      : data.description,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
