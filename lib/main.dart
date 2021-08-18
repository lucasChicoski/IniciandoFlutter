import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'master_components/body.dart';
import 'master_components/app_bar.dart';

main() {
  runApp(ClasseTeste());
}

class ClasseTeste extends StatefulWidget {
  _StateTeste createState() {
    return new _StateTeste();
  }
}

class _StateTeste extends State<ClasseTeste> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Obrigadtório ter um MaterialApp
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.ac_unit),
          title: SizedBox(
            child: Text("Meu primeiro App"),
          ),
          actions: [
            Icon(Icons.ac_unit_outlined),
            Icon(Icons.ac_unit_outlined),
          ],
        ),
        body: Body(),
      ),
    );
  }
}
