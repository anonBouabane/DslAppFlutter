import 'package:dslsale/util/textstyle.dart';
import 'package:flutter/material.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //=============== appbar ================//

        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'ບິນສິນຄ້າ',
            style: textTitlewhite,
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.white,
            ),
          ),
        ),

      //=============== content ================//

        body: const Column(
          children: [],
        ));
  }
}
