import 'package:conversor_curso/app/components/currency_box.dart';
import 'package:conversor_curso/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {

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
                SizedBox(height: 50,),
                CurrencyBox(
                  selectedItem: homeController.toCurrency!,
                  controller: toText,
                  items: homeController.currencies,onChanged: (model){
                      setState(() => homeController.toCurrency = model);
                },),
                SizedBox(height: 10,),
                CurrencyBox(
                  selectedItem: homeController.fromCurrency!,
                  controller: fromText,
                  items: homeController.currencies,onChanged: (model){
                  setState(() => homeController.fromCurrency = model);
                },),
                SizedBox(height: 30,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.amber),
                    onPressed: (){
                  homeController.convert();
                }, child: const Text("CONVERTER"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
