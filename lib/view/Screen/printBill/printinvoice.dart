import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:sunmi_printer_plus/enums.dart';
import 'package:sunmi_printer_plus/sunmi_printer_plus.dart';
import 'package:sunmi_printer_plus/sunmi_style.dart';

class InvoicePrinter {
  Future<void> printInvoice() async {
    // Initialize the printer
    await SunmiPrinter.initPrinter();
    await SunmiPrinter.bindingPrinter();
    await SunmiPrinter.startTransactionPrint(true);

    // Print logo image
    await printLogoImage();

    // Print invoice header
    await SunmiPrinter.printText('Tax Invoice', style: SunmiStyle(
      fontSize: SunmiFontSize.MD,
      bold: true,
      align: SunmiPrintAlign.CENTER,
    ));

    // Print store information
    await SunmiPrinter.printText('Main Branch', style: SunmiStyle(
      fontSize: SunmiFontSize.MD,
      bold: true,
      align: SunmiPrintAlign.CENTER,
    ));
    await SunmiPrinter.printText('London', style: SunmiStyle(
      fontSize: SunmiFontSize.SM,
      bold: false,
      align: SunmiPrintAlign.LEFT,
    ));

    // Print horizontal line
    await SunmiPrinter.line();

    // Print invoice items
    await SunmiPrinter.printText('Item 1', style: SunmiStyle(
      fontSize: SunmiFontSize.SM,
      bold: false,
      align: SunmiPrintAlign.LEFT,
    ));
    await SunmiPrinter.printText('£10.00', style: SunmiStyle(
      fontSize: SunmiFontSize.SM,
      bold: false,
      align: SunmiPrintAlign.RIGHT,
    ));

    // Print total
    await SunmiPrinter.printText('Total: £10.00', style: SunmiStyle(
      fontSize: SunmiFontSize.MD,
      bold: true,
      align: SunmiPrintAlign.CENTER,
    ));

    // End the transaction
    // await SunmiPrinter.endTransactionPrint();
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
}