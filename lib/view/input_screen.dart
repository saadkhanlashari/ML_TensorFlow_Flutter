import 'package:flutter/material.dart';
import '../model/number_predictor_model.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final inputController = TextEditingController(); // Corrected variable name
  late NumberPredictor numberPredictor;
  double result = 0.0; // Initialize result with a default value.

  @override
  void initState() {
    // this constrator load the interpreter
    numberPredictor = NumberPredictor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
              controller: inputController, // Corrected variable name
              keyboardType: TextInputType
                  .number, // Added to ensure the input is treated as a number.
            ),
            ElevatedButton(
              onPressed: () async {
                double value = double.tryParse(inputController.text) ?? 0.0;
                double prediction = await numberPredictor.predictNumber(value);
                setState(() {
                  result = prediction;
                });
              },
              child: const Text("Submit"),
            ),
            Text(
              'Result: $result',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
