import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Email extends StatelessWidget {
  var funcao;
  Email(this.funcao);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        onChanged: funcao,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Insira seu Email",
        ),
      ),
    );
  }
}

class Senha extends StatelessWidget {
  var function;
  Senha(this.function);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        onChanged: function,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Insira sua Senha",
        ),
      ),
    );
  }
}
