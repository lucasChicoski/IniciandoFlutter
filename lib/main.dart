import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
//Gerência de Estado
import './mobx.dart';
import 'controllers/controllText.dart';
//components
import "./components/textArea.dart";
import 'components/buttonChangeCor.dart';

main() {
  runApp(ClasseTeste());
}

class ClasseTeste extends StatefulWidget {
  _StateTeste createState() {
    return new _StateTeste();
  }
}

class _StateTeste extends State<ClasseTeste> {
AlterColors gerenciaEstado = new AlterColors();
  ControllText infladorSenha = new ControllText();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Obrigadtório ter um MaterialApp
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              children: [
                Text(
                  "data1",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                Text("data2"),
              ],
            ),
            Observer(builder: (_) {
              return ChangeColor(
                  gerenciaEstado.indexColors, gerenciaEstado.generateIndex);
            }),
            Email(infladorSenha.inflateEmail),
            Senha(infladorSenha.inflatePassword),
          ],
        ),
      ),
    );
  }
}
