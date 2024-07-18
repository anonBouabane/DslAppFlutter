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

    // Print invoice header
    await SunmiPrinter.printText('ໃບບິນເກັບເງິນ',
        style: SunmiStyle(
          fontSize: SunmiFontSize.XL,
          bold: true,
          align: SunmiPrintAlign.CENTER,
        ));

    // Print store information
    await SunmiPrinter.printText('ຢາສະຫົວ',
        style: SunmiStyle(
          fontSize: SunmiFontSize.MD,
          bold: true,
          align: SunmiPrintAlign.LEFT,
        ));
    await SunmiPrinter.printText('London',
        style: SunmiStyle(
          fontSize: SunmiFontSize.SM,
          bold: false,
          align: SunmiPrintAlign.LEFT,
        ));

    // Print horizontal line
    await SunmiPrinter.line();

    // Print invoice items

    // Print total
    await SunmiPrinter.printText('Total: £10.00',
        style: SunmiStyle(
          fontSize: SunmiFontSize.MD,
          bold: true,
          align: SunmiPrintAlign.CENTER,
        ));

    // End the transaction
    // await SunmiPrinter.endTransactionPrint();
  }

  Future<Uint8List> readFileBytes(String path) async {
    ByteData fileData = await rootBundle.load(path);
    Uint8List fileUnit8List = fileData.buffer
        .asUint8List(fileData.offsetInBytes, fileData.lengthInBytes);
    return fileUnit8List;
  }
}
