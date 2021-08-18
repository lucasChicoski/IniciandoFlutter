import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

//Componentes
import "../components/buttonChangeCor.dart";
import '../components/textArea.dart';

//Store
import '../controllers/controllText.dart';
import '../controllers/controllButton.dart';


class Body extends StatelessWidget {

  AlterColors gerenciaEstado = new AlterColors();
  ControllText infladorSenha = new ControllText();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Observer(builder: (_) {
          return ChangeColor(
              gerenciaEstado.indexColors, gerenciaEstado.generateIndex);
        }),
        Email(infladorSenha.inflateEmail),
        Senha(infladorSenha.inflatePassword),
      ],
    );
  }
}
