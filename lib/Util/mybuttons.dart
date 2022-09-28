import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final String imagepath;
  final String buttontext;

  MyCustomButton(this.imagepath, this.buttontext);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey[100],
              boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.shade300,
                  spreadRadius: 10,
                ),
              ]),
          child: Image.asset(imagepath),
        ),
        Text(
          buttontext,
          style: TextStyle(
            fontSize: 15,
          ),
        )
      ],
    );
  }
}
