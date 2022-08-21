import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double result = 0;
  TextEditingController controllerNum1 = TextEditingController();
  TextEditingController controllerNum2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40,
          ),
          child: Column(
            children: [
              TextField(
                controller: controllerNum1,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  color: Colors.deepOrange,
                ),
                decoration: const InputDecoration(
                  labelText: 'Número 01',
                  labelStyle: TextStyle(color: Colors.deepOrange),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: controllerNum2,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  color: Colors.deepOrange,
                ),
                decoration: const InputDecoration(
                  labelText: 'Número 02',
                  labelStyle: TextStyle(color: Colors.deepOrange),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double num1 = double.parse(controllerNum1.text);
                      double num2 = double.parse(controllerNum2.text);
                      result = num1 + num2;
                      debugPrint('$result');
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text("Calcular"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'O resultado da soma é: $result',
                style: const TextStyle(color: Colors.deepOrange),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
