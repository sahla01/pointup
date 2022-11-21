
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class BarcodeScanPage extends StatefulWidget {
  const BarcodeScanPage({Key? key}) : super(key: key);

  @override
  State<BarcodeScanPage> createState() => _BarcodeScanPageState();
}

class _BarcodeScanPageState extends State<BarcodeScanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Barcode demo'),
      ),
      body: Center(
        child: BarcodeWidget(
          barcode: Barcode.aztec(), // Barcode type and settings
          data: 'https://pub.dev/packages/barcode_widget', // Content
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
