import 'package:dslsale/util/textstyle.dart';
import 'package:dslsale/view/widget/text_formfeild.dart';
import 'package:flutter/material.dart';

class RegisterCustoScreen extends StatefulWidget {
  const RegisterCustoScreen({super.key});

  @override
  State<RegisterCustoScreen> createState() => _RegisterCustoScreenState();
}

class _RegisterCustoScreenState extends State<RegisterCustoScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: const Text(
            "ລົງທະບຽນລູກຄ້າ",
            style: textTitlewhite,
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              TextFeildWidget(
                  lable: "ຊື່ ແລະ ນາມສະກຸນ",
                  suffixicon: const Icon(Icons.person),
                  keyboardType: TextInputType.text),
            ],
          ),
        ),
      ),
    );
  }

  int selectvalue = 0;
  String? dd;
  String? mm;
  String? yy;
  dynamic item = [""];
}
