## Machine Learning Model In Flutter

# Number Detection Flutter App

This Flutter app demonstrates number detection using a machine learning model. The machine learning model is trained and converted to TensorFlow Lite format for mobile deployment. The TFLite package is used to integrate the model into a Flutter app.

## Overview

The project consists of the following components:

1. **Machine Learning Model**: A number detection model trained using TensorFlow. The model is converted to TensorFlow Lite format for optimal performance on mobile devices.

2. **Flutter App**: A mobile application developed using the Flutter framework. The TFLite package is utilized to integrate the TensorFlow Lite model into the app.

## Project Structure

- `/assets`: Contains the TensorFlow Lite model file (`model.tflite`).
- `/lib`: Contains the Flutter app source code.
  - `main.dart`: The main entry point of the Flutter app.
  - `number_detector.dart`: Flutter widget responsible for capturing images and running inference using the TensorFlow Lite model.

## Prerequisites

Before running the app, ensure you have the following installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Android Studio](https://developer.android.com/studio) or [Xcode](https://developer.apple.com/xcode/) for iOS development

## Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/saadkhanlashari/ML_TensorFlow_Flutter.git
