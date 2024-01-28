// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ItemModel on _ItemModelBase, Store {
  late final _$titleAtom = Atom(name: '_ItemModelBase.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  bool _titleIsInitialized = false;

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, _titleIsInitialized ? super.title : null,
        () {
      super.title = value;
      _titleIsInitialized = true;
    });
  }

  late final _$checkAtom = Atom(name: '_ItemModelBase.check', context: context);

  @override
  bool get check {
    _$checkAtom.reportRead();
    return super.check;
  }

  bool _checkIsInitialized = false;

  @override
  set check(bool value) {
    _$checkAtom.reportWrite(value, _checkIsInitialized ? super.check : null,
        () {
      super.check = value;
      _checkIsInitialized = true;
    });
  }

  late final _$_ItemModelBaseActionController =
      ActionController(name: '_ItemModelBase', context: context);

  @override
  dynamic setTitle(String value) {
    final _$actionInfo = _$_ItemModelBaseActionController.startAction(
        name: '_ItemModelBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_ItemModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCheck(bool value) {
    final _$actionInfo = _$_ItemModelBaseActionController.startAction(
        name: '_ItemModelBase.setCheck');
    try {
      return super.setCheck(value);
    } finally {
      _$_ItemModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
check: ${check}
    ''';
  }
}
