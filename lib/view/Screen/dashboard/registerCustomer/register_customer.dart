import 'package:dslsale/util/textstyle.dart';
import 'package:dslsale/view/widget/text_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_picker_spinner_pop_up/time_picker_spinner_pop_up.dart';

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
          actions: [
            IconButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text("ລົງທະບຽນສຳເລັດ"),
                    action: SnackBarAction(label: "Undo", onPressed: () {}),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                icon: const Icon(
                  Icons.cloud_done_outlined,
                  color: Colors.white,
                  size: 30,
                ))
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          title: const Text(
            "ລົງທະບຽນລູກຄ້າ",
            style: textTitlewhite,
          ),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(children: [
              TextFieldWidget(
                text: 'ຊື່ ແລະ ນາມສະກຸນ :',
                keyboardType: TextInputType.text,
              ),
              TextFieldWidget(
                text: 'ເບີໂທ :',
                keyboardType: TextInputType.text,
              ),
              TextFieldWidget(
                  text: 'ອາຍຸ :', keyboardType: TextInputType.number),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.8,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          'ເລືອກວັນເດືອນປີເກີດ :',
                          style: textSimplegrey,
                        ),
                      ),
                    ),
                    TimePickerSpinnerPopUp(
                      textStyle: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                      mode: CupertinoDatePickerMode.date,
                      initTime: DateTime.now(),
                      minTime:
                          DateTime.now().subtract(const Duration(days: 10)),
                      maxTime: DateTime.now().add(const Duration(days: 10)),
                      barrierColor:
                          Colors.black12, //Barrier Color when pop up show
                      minuteInterval: 1,
                      cancelText: 'Cancel',
                      confirmText: 'OK',
                      pressType: PressType.singlePress,
                      timeFormat: 'yyyy/MM/dd',

                      onChange: (dateTime) {
                        // Implement your logic with select dateTime
                      },
                    ),
                  ],
                ),
              ),
              TextFieldWidget(
                  text: 'ບ້ານຢູ່ປະຈຸບັນ :', keyboardType: TextInputType.text),
              TextFieldWidget(text: 'ແຂວງ :', keyboardType: TextInputType.text),
              TextFieldWidget(
                  text: 'ເມືອງ :', keyboardType: TextInputType.text),
              TextFieldWidget(
                  text: 'ຫນ່ວຍ :', keyboardType: TextInputType.number),
              TextFieldWidget(
                  text: 'ເຮືອນເລກທີ :', keyboardType: TextInputType.number),
              TextFieldWidget(
                  text: 'ຊື່ຮ້ານ :', keyboardType: TextInputType.text),
              TextFieldWidget(
                  text: 'ສະຖານທີ່ຮ້ານຕັ້ງຢູ່ບ້ານ :',
                  keyboardType: TextInputType.text),
              TextFieldWidget(text: 'ແຂວງ :', keyboardType: TextInputType.text),
              TextFieldWidget(
                  text: 'ເມືອງ :', keyboardType: TextInputType.text),
              TextFieldWidget(
                  text: 'ຫນ່ວຍ :', keyboardType: TextInputType.number),
              TextFieldWidget(
                  text: 'ເຮືອນເລກທີ :', keyboardType: TextInputType.number),
            ]),
          ),
        ),
      ),
    );
  }
}
