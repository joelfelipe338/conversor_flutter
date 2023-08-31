import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../models/currency_model.dart';

class CurrencyBox extends StatelessWidget {

  final TextEditingController controller;
  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final void Function(CurrencyModel? model) onChanged;
  final void Function(String? value) onChangedValue;

  const CurrencyBox({Key? key,required this.onChangedValue, required this.controller,required this.items, required this.onChanged, required this.selectedItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
              height: 56,
              child: DropdownButton<CurrencyModel>(
                  iconEnabledColor: Colors.amber,
                  isExpanded: true,
                  value: selectedItem,
                  underline: Container(
                    height: 1,
                    color: Colors.amber,
                  ),
                  items: items.map((e) => DropdownMenuItem(value: e, child: Text(e.name))).toList(),
                  onChanged: onChanged)
          ),
        ),
        const SizedBox(width: 10,),
        Expanded(
          flex: 2,
          child: Observer(
              builder: (context) {
                return TextField(
                  controller: controller,
                  onChanged: onChangedValue,
                  decoration:const InputDecoration(
                      enabledBorder:  UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
                      focusedBorder:  UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber))
                  ),
                );
              },
            )),

      ],
    );
  }
}
