import 'package:flutter/material.dart';

class BarCodeScanner extends StatelessWidget {
  const BarCodeScanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bar Code Reader"),
      ),
    );
  }
}
