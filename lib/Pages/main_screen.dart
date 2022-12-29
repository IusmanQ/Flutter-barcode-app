// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_bar_code/Pages/volunteer_details.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class MainScreen extends StatefulWidget {

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _barcodeScanned = false;
  String scanResult ='';
  TextEditingController _barcodeController = TextEditingController();

  void _scannerStatus() {
    setState(() {
      _barcodeScanned=true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                print(value);
              },
              keyboardType: TextInputType.number,
              controller: _barcodeController,
              decoration: InputDecoration(
                  labelText: _barcodeController.text != null ? _barcodeController.text : scanResult
              ),
            ),
            SizedBox(height:20.0),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => VolunteerDetails(scanResult == '' ? _barcodeController.text : scanResult)));
            }, child: Text('Submit')),
            ElevatedButton(
              child: Text('Scan'),
              onPressed: () async {
                await scanBarCode();
                _scannerStatus();

              },
            ),
          ],
        ),
      ),
    );
  }

  Future scanBarCode() async {

    scanResult = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666",
        "Cancel",
        true,
        ScanMode.BARCODE);
  }
}
