import 'package:flutter/material.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';

class BarCodeScanner extends StatelessWidget {
  const BarCodeScanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InputImage inputImage;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bar Code Reader"),
      ),
    );
  }
}
