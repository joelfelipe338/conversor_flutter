// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$currenciesAtom =
      Atom(name: 'HomeControllerBase.currencies', context: context);

  @override
  List<CurrencyModel> get currencies {
    _$currenciesAtom.reportRead();
    return super.currencies;
  }

  @override
  set currencies(List<CurrencyModel> value) {
    _$currenciesAtom.reportWrite(value, super.currencies, () {
      super.currencies = value;
    });
  }

  late final _$toCurrencyAtom =
      Atom(name: 'HomeControllerBase.toCurrency', context: context);

  @override
  CurrencyModel? get toCurrency {
    _$toCurrencyAtom.reportRead();
    return super.toCurrency;
  }

  @override
  set toCurrency(CurrencyModel? value) {
    _$toCurrencyAtom.reportWrite(value, super.toCurrency, () {
      super.toCurrency = value;
    });
  }

  late final _$fromCurrencyAtom =
      Atom(name: 'HomeControllerBase.fromCurrency', context: context);

  @override
  CurrencyModel? get fromCurrency {
    _$fromCurrencyAtom.reportRead();
    return super.fromCurrency;
  }

  @override
  set fromCurrency(CurrencyModel? value) {
    _$fromCurrencyAtom.reportWrite(value, super.fromCurrency, () {
      super.fromCurrency = value;
    });
  }

  late final _$toTextAtom =
      Atom(name: 'HomeControllerBase.toText', context: context);

  @override
  TextEditingController get toText {
    _$toTextAtom.reportRead();
    return super.toText;
  }

  @override
  set toText(TextEditingController value) {
    _$toTextAtom.reportWrite(value, super.toText, () {
      super.toText = value;
    });
  }

  late final _$fromTextAtom =
      Atom(name: 'HomeControllerBase.fromText', context: context);

  @override
  TextEditingController get fromText {
    _$fromTextAtom.reportRead();
    return super.fromText;
  }

  @override
  set fromText(TextEditingController value) {
    _$fromTextAtom.reportWrite(value, super.fromText, () {
      super.fromText = value;
    });
  }

  late final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase', context: context);

  @override
  void changeToCurrency(CurrencyModel? value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.changeToCurrency');
    try {
      return super.changeToCurrency(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeFromCurrency(CurrencyModel? value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.changeFromCurrency');
    try {
      return super.changeFromCurrency(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void convertToText(String? toText) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.convertToText');
    try {
      return super.convertToText(toText);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void convertFromText(String? fromText) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.convertFromText');
    try {
      return super.convertFromText(fromText);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currencies: ${currencies},
toCurrency: ${toCurrency},
fromCurrency: ${fromCurrency},
toText: ${toText},
fromText: ${fromText}
    ''';
  }
}
