// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controllText.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControllText on ControllTextBase, Store {
  final _$emailAtom = Atom(name: 'ControllTextBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$senhaAtom = Atom(name: 'ControllTextBase.senha');

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  final _$ControllTextBaseActionController =
      ActionController(name: 'ControllTextBase');

  @override
  void inflateEmail(String value) {
    final _$actionInfo = _$ControllTextBaseActionController.startAction(
        name: 'ControllTextBase.inflateEmail');
    try {
      return super.inflateEmail(value);
    } finally {
      _$ControllTextBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void inflatePassword(String value) {
    final _$actionInfo = _$ControllTextBaseActionController.startAction(
        name: 'ControllTextBase.inflatePassword');
    try {
      return super.inflatePassword(value);
    } finally {
      _$ControllTextBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
senha: ${senha}
    ''';
  }
}
