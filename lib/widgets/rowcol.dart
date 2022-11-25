import 'package:flutter/material.dart';

class RowCol extends StatelessWidget {
  final String skillName;
  final String skillColor;
  RowCol(this.skillName, this.skillColor);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Card(
        elevation: 15,
        color: Colors.amberAccent,
        child: Center(
          child: Text(
            skillName,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
