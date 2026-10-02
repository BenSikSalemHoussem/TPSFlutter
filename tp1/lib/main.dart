import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 56, 18, 122)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'TP1 App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String conversion = "etd";
  String textConverted = "";

  TextEditingController amountController = TextEditingController();

  void convertAmount() {
    double ConvertedValue =
        double.parse(amountController.text.replaceAll(',', '.'));

    setState(() {
      if (conversion == "dte") {
        textConverted =
            'le resultat est ${(ConvertedValue / 3.4).toString()} Euro';
      } else {
        textConverted =
            'le resultat est ${(ConvertedValue * 3.4).toString()} Dinars';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: amountController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  labelText: "Montant",
                ),
              ),
              RadioListTile(
                title: const Text('Euro to Dinar'),
                value: 'etd',
                groupValue: conversion,
                onChanged: (value) {
                  setState(() {
                    conversion = value!;
                  });
                },
              ),
              RadioListTile(
                  title: const Text("DinarToEuro"),
                  value: "dte",
                  groupValue: conversion,
                  onChanged: (value) {
                    setState(() {
                      conversion = value!;
                    });
                  }),
              Text(
                '$textConverted',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              ElevatedButton(
                  onPressed: convertAmount, child: const Text("Convert")),
            ],
          ),
        ),
      ),
    );
  }
}
