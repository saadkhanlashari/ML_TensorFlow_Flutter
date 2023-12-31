import 'dart:developer';
import 'package:tflite_flutter/tflite_flutter.dart';

class NumberPredictor {
  NumberPredictor() {
    _loadModel();
  }
  late Interpreter _interpreter;
// this method load the interpreter
  Future<void> _loadModel() async {
    // here we load number predictor file which is in our assets directory
    _interpreter =
        await Interpreter.fromAsset('assets/number_predictor.tflite');
    log('Model loaded');
  }

// this method take your input send interpreter and return results
  Future<double> predictNumber(double input) async {
    var inputTensor = [input].reshape([1, 1]).cast();
    var outputTensor = List.filled(1, 0).reshape([1, 1]).cast();

    _interpreter.run(inputTensor, outputTensor);

    log(outputTensor[0][0].toString());
    return outputTensor[0][0];
  }
}
