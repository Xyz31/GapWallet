import 'package:flutter/material.dart';

class MyCustomListTile extends StatelessWidget {
  final String imagepath;
  final String topic;
  final String subtopic;

  MyCustomListTile(this.imagepath, this.topic, this.subtopic);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 85,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.grey[100],
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(imagepath),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(children: [
                  Text(topic,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(
                    subtopic,
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ]),
              ],
            ),
            Icon(Icons.arrow_forward_ios),
          ],
        ));
  }
}
