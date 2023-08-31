import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../models/currency_model.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  @observable
  List<CurrencyModel> currencies = [];

  @observable
  CurrencyModel? toCurrency;

  @observable
  CurrencyModel? fromCurrency;

  @observable
  TextEditingController toText;

  @observable
  TextEditingController fromText;

  HomeControllerBase({required this.toText, required this.fromText}) {
    currencies = CurrencyModel.getCurrency();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  @action
  void changeToCurrency(CurrencyModel? value){
    toCurrency = value;
    convertToText(toText.text);
  }

  @action
  void changeFromCurrency(CurrencyModel? value) {
    fromCurrency = value;
    convertToText(toText.text);
  }

  @action
  void convertToText(String? toText) {
    final String text = toText ?? '';
    final double value = double.tryParse(text) ?? 0.0;
    double returnValue = 0;

    if (fromCurrency!.name == 'Real') {
      returnValue = value * toCurrency!.real;
    } else if (fromCurrency!.name == 'Euro') {
      returnValue = value * toCurrency!.euro;
    } else if (fromCurrency!.name == 'Dolar') {
      returnValue = value * toCurrency!.dolar;
    } else if (fromCurrency!.name == 'Bitcoin') {
      returnValue = value * toCurrency!.bitcoin;
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }

  @action
  void convertFromText(String? fromText) {
    final String text = fromText ?? '';
    final double value = double.tryParse(text) ?? 1.0;
    double returnValue = 0;

    if (toCurrency!.name == 'Real') {
      returnValue = value * fromCurrency!.real;
    } else if (toCurrency!.name == 'Euro') {
      returnValue = value * fromCurrency!.euro;
    } else if (toCurrency!.name == 'Dolar') {
      returnValue = value * fromCurrency!.dolar;
    } else if (toCurrency!.name == 'Bitcoin') {
      returnValue = value * fromCurrency!.bitcoin;
    }

    toText.text = returnValue.toStringAsFixed(2);
  }

}
