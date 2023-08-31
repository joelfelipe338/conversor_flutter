import 'package:conversor_curso/app/components/currency_box.dart';
import 'package:conversor_curso/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  late HomeController homeController;

  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/logo.png', width: 150,height: 150,),
                const SizedBox(height: 50,),
                Observer(
                  builder: (_) {
                    return CurrencyBox(
                      selectedItem: homeController.toCurrency!,
                      controller: homeController.toText,
                      items: homeController.currencies,
                      onChangedValue: homeController.convertToText,
                      onChanged: homeController.changeToCurrency,);
                  },
                ),
                const SizedBox(height: 10,),
                Observer(
                  builder: (_) {
                    return CurrencyBox(
                      selectedItem: homeController.fromCurrency!,
                      controller: homeController.fromText,
                      items: homeController.currencies,
                      onChangedValue: homeController.convertFromText,
                      onChanged: homeController.changeFromCurrency,);

                  },
                ),
                const SizedBox(height: 30,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
