import 'package:mobx/mobx.dart';

part 'controllText.g.dart';

class ControllText = ControllTextBase with _$ControllText;

abstract class ControllTextBase with Store {
  ControllTextBase() {
    autorun((_) {
      print(email);
      print(senha);
    });
  }
  //Email
  @observable
  String email = "";

  @action
  void inflateEmail(String value) {
    email = value;
  }

  //Senha
  @observable
  String senha = "";

  @action
  void inflatePassword(String value) {
    senha = value;
  }
}
