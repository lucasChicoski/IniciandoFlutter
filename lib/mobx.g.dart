// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AlterColors on AlterColorsBase, Store {
  final _$indexColorsAtom = Atom(name: 'AlterColorsBase.indexColors');

  @override
  int get indexColors {
    _$indexColorsAtom.reportRead();
    return super.indexColors;
  }

  @override
  set indexColors(int value) {
    _$indexColorsAtom.reportWrite(value, super.indexColors, () {
      super.indexColors = value;
    });
  }

  final _$AlterColorsBaseActionController =
      ActionController(name: 'AlterColorsBase');

  @override
  void generateIndex() {
    final _$actionInfo = _$AlterColorsBaseActionController.startAction(
        name: 'AlterColorsBase.generateIndex');
    try {
      return super.generateIndex();
    } finally {
      _$AlterColorsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
indexColors: ${indexColors}
    ''';
  }
}
