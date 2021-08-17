import 'package:mobx/mobx.dart';
import 'dart:math';

/**
 * Para criar uma gerencia de estado com MobX é preciso de instalar as seguintes dependencias:
 * 
 * MobX - próprio gerenciador de estado
 * flutter_mobx - adiciona o Observer para renderizar o que foi trocado
 * mobx_codegen - gera um código para o mobx
 * build_runner
 */

//comandos : dart run build_runner <build ou watch>

//Para criar um gerenciador de estado é preciso de criar uma Classe.
// Vamos começar criando uma classe !

part 'mobx.g.dart'; //O nome da classe deve ter o mesmo nome do arquivo.

class AlterColors = AlterColorsBase with _$AlterColors; //Mix das duas classes

abstract class AlterColorsBase with Store {
  AlterColors() {}
  Random random = new Random();

  @observable
  int indexColors = 0;

  @action
  void generateIndex() {
    indexColors = indexColors + 1;
    if (indexColors > 3) {
      indexColors = 0;
    }
    
    print(indexColors);
  }
}
