import 'package:dslsale/util/images.dart';
import 'package:dslsale/util/textstyle.dart';
import 'package:flutter/material.dart';

class DetailProductScreen extends StatefulWidget {
  const DetailProductScreen({super.key});

  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Detail",
          style: textTitlewhite,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: Image.asset(
                    Images.warter,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const Text(
              'ນ້ຳດື່ມຫົວເສືອ 1500ml ແພັກ 6 ຕຸກ , ນ້ຳດື່ມຫົວເສືອ 250ml ແພັກ 24 ຕຸກ , ນ້ຳດື່ມຫົວເສືອ 600ml ແພັກ 12 ຕຸກນ້ຳດື່ມຫົວເສືອ 1500ml ແພັກ 6 ຕຸກ , ນ້ຳດື່ມຫົວເສືອ 250ml ແພັກ 24 ຕຸກ , ນ້ຳດື່ມຫົວເສືອ 600ml ແພັກ 12 ຕຸກນ້ຳດື່ມຫົວເສືອ 1500ml ແພັກ 6 ຕຸກ , ນ້ຳດື່ມຫົວເສືອ 250ml ແພັກ 24 ຕຸກ , ນ້ຳດື່ມຫົວເສືອ 600ml ແພັກ 12 ຕຸກນ້ຳດື່ມຫົວເສືອ 1500ml ແພັກ 6 ຕຸກ , ນ້ຳດື່ມຫົວເສືອ 250ml ແພັກ 24 ຕຸກ , ນ້ຳດື່ມຫົວເສືອ 600ml ແພັກ 12 ຕຸກ',
              style: textSimple,
            ),
            Row(
              children: [
                Text(
                  "ຈຳນວນ : ${counter.toString()}",
                  style: textSimpleBold,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    if (counter == 1) {
                      return;
                    }
                    remove();
                  },
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      add();
                    },
                    icon: const Icon(
                      Icons.add,
                      color: Colors.black,
                    )),
              ],
            ),
          ],
        ),
      ),
    );

  }

  int counter = 1;
  add() {
    setState(() {
      counter += 1;
    });
  }

  remove() {
    setState(() {
      counter -= 1;
    });
  }
}
