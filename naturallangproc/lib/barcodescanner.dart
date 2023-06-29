import 'package:flutter/material.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';

class BarcodeScanPage extends StatefulWidget {
  const BarcodeScanPage({Key? key}) : super(key: key);

  @override
  BarcodeScanPageState createState() => BarcodeScanPageState();
}

class BarcodeScanPageState extends State<BarcodeScanPage> {
  final BarcodeScanner _barcodeScanner = BarcodeScanner();
  bool _canProcess = true;
  bool _isBusy = false;
  CustomPaint? _customPaint;
  String? _text;

  @override
  void dispose() {
    _canProcess = false;
    _barcodeScanner.close();
    super.dispose();
  }

   @override
  Widget build(BuildContext context) {
    return CameraView(
      title: 'Barcode Scanner',
      customPaint: _customPaint,
      text: _text,
      onImage: (inputImage) {
        processImage(inputImage);
      },
    );
  }
