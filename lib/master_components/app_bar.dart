import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//Está criando uma app bar

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red);
  }
}