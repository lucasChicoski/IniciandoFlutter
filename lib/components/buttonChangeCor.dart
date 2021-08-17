import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChangeColor extends StatelessWidget {
  late int indexColor;
  var functionIncrement;

  ChangeColor(this.indexColor, this.functionIncrement);

  @override
  Widget build(BuildContext context) {
    List listaCor = [Colors.black, Colors.yellow, Colors.blue, Colors.grey];
    return ElevatedButton(
      onPressed: functionIncrement,
      child: Text("Troque de cor"),
      style: ElevatedButton.styleFrom(
        primary: listaCor[indexColor],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
