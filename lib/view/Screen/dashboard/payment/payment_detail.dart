import 'package:dslsale/data/data_dump.dart';
import 'package:dslsale/util/images.dart';
import 'package:dslsale/util/textstyle.dart';
import 'package:flutter/material.dart';

class PaymentDetailScreen extends StatefulWidget {
  const PaymentDetailScreen({super.key});

  @override
  State<PaymentDetailScreen> createState() => _PaymentDetailScreenState();
}

class _PaymentDetailScreenState extends State<PaymentDetailScreen> {
  final data = Data();
  int _selectValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'ຊຳລະ',
          style: textTitlewhite,
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Center(
              child: Image.asset(Images.qr),
            ),
            const Text(
              'Anon BouaBane',
              style: textTitleGrey,
            ),
            const Text(
              '100-12-00-123-123-123',
              style: textSimplegrey,
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'ເງິນສົດ',
                    style: textSimplegrey,
                  ),
                  Radio(
                    value: 1,
                    groupValue: _selectValue,
                    onChanged: (int? value) {
                      setState(() {
                        _selectValue = value!;
                      });
                    },
                  ),
                  const Text(
                    'ເງິນໂອນ',
                    style: textSimplegrey,
                  ),
                  Radio(
                    value: 2,
                    groupValue: _selectValue,
                    onChanged: (int? value) {
                      setState(() {
                        _selectValue = value!;
                      });
                    },
                  ),
                  const Text(
                    'ຄ້າງຊຳລະ',
                    style: textSimplegrey,
                  ),
                  Radio(
                    value: 3,
                    groupValue: _selectValue,
                    onChanged: (int? value) {
                      setState(() {
                        _selectValue = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'ຂໍ້ມູນລູກຄ້າ',
                  style: textSimpleBold,
                ),
                Text(
                  'ຂໍ້ມູນພະນັກງານ',
                  style: textSimpleBold,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ວັນທີຊຳລະ :  01/06/24',
                        style: textSimplegrey,
                      ),
                      Text(
                        'ຊື່ຮ້ານ : ມາຣິນ່າ',
                        style: textSimplegrey,
                      ),
                      Text(
                        'ເບີໂທ : 77995490',
                        style: textSimplegrey,
                      ),
                      Text(
                        'ບ້ານ : ໂພນສະຫວາດ',
                        style: textSimplegrey,
                      ),
                      Text(
                        'ເມືອງ : ສີໂຄດຕະບອງ',
                        style: textSimplegrey,
                      ),
                      Text(
                        'ແຂວງ : ນະຄອນຫລວງ',
                        style: textSimplegrey,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ຊື່ : Anon bouaban',
                        style: textSimplegrey,
                      ),
                      Text(
                        'ອາຍຸ :23 ',
                        style: textSimplegrey,
                      ),
                      Text(
                        'ເບີໂທ : 77995490',
                        style: textSimplegrey,
                      ),
                      Text(
                        'ບ້ານ : ໂພນສະຫວາດ',
                        style: textSimplegrey,
                      ),
                      Text(
                        'ເມືອງ : ສີໂຄດຕະບອງ',
                        style: textSimplegrey,
                      ),
                      Text(
                        'ແຂວງ : ນະຄອນຫລວງ',
                        style: textSimplegrey,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 68, 147, 212),
        child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  "ປິ້ນບິນ",
                  style: textTitleGrey,
                ))),
      ),
    );
  }
}
