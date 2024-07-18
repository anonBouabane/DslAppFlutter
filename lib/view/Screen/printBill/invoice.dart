import 'dart:typed_data';

import 'package:dslsale/view/Screen/printBill/printinvoice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sunmi_printer_plus/enums.dart';
import 'package:sunmi_printer_plus/sunmi_printer_plus.dart';
import 'package:sunmi_printer_plus/sunmi_style.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InvoiceScreenState createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  final _billController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _billController.text = 'Tax Invoice\nMain Branch\nLondon';
  }

  Future<void> _printBill() async {
    await SunmiPrinter.initPrinter();
    await SunmiPrinter.bindingPrinter();
    await SunmiPrinter.startTransactionPrint(true);

    // Print logo image
    await printLogoImage();

    // Print bill text
    await SunmiPrinter.printText(_billController.text,
        style: SunmiStyle(
          fontSize: SunmiFontSize.MD,
          bold: true,
          align: SunmiPrintAlign.CENTER,
        ));

    // Print horizontal line
    await SunmiPrinter.line();

    // Print footer text
    await SunmiPrinter.printText('Thank you for your business!',
        style: SunmiStyle(
          fontSize: SunmiFontSize.SM,
          bold: false,
          align: SunmiPrintAlign.CENTER,
        ));

    // await SunmiPrinter.stopTransactionPrint();
  }

  Future<void> printLogoImage() async {
    await SunmiPrinter.lineWrap(1);
    Uint8List byte = await _getImageFromAsset('assets/Group.png');
    await SunmiPrinter.printImage(byte);
    await SunmiPrinter.lineWrap(1);
  }

  Future<Uint8List> _getImageFromAsset(String iconPath) async {
    return await readFileBytes(iconPath);
  }

  Future<Uint8List> readFileBytes(String path) async {
    ByteData fileData = await rootBundle.load(path);
    Uint8List fileUnit8List = fileData.buffer
        .asUint8List(fileData.offsetInBytes, fileData.lengthInBytes);
    return fileUnit8List;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Print Bill'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _billController,
              maxLines: 5,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Bill Text',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: print.printInvoice,
              child: const Text('Print Bill'),
            ),
          ],
        ),
      ),
    );
  }

  final print = InvoicePrinter();
}
