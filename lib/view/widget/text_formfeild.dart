import 'package:dslsale/util/textstyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFeildWidget extends StatelessWidget {
  String lable;
  dynamic suffixicon;
  dynamic keyboardType;

  TextFeildWidget({
    super.key,
    required this.lable,
    required this.suffixicon,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,vertical: 5
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              lable,
              style: textSimpleBold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              height: 60,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: TextFormField(
                keyboardType: keyboardType,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(), suffixIcon: suffixicon),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
