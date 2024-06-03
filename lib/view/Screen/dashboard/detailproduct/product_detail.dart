import 'package:dslsale/util/images.dart';
import 'package:dslsale/util/textstyle.dart';
import 'package:dslsale/view/Screen/dashboard/detailproduct/product_cart.dart';
import 'package:dslsale/view/Screen/dashboard/payment/payment_detail.dart';
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
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartScreen()));
              },
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
                size: 30,
              ))
        ],
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
              style: textSimplegrey,
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
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 68, 147, 212),
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PaymentDetailScreen()));
                    },
                    child: const Text(
                      'ຊຳລະ',
                      style: textTitlewhite,
                    ))),
            Container(
              height: 50,
              width: 90,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: const Text("ເພີ່ມເຂົ້າກະຕ່າສຳເລັດ"),
                      action: SnackBarAction(label: "Undo", onPressed: () {}),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  icon: const Icon(
                    Icons.add_shopping_cart_outlined,
                    color: Colors.white,
                    size: 40,
                  )),
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
    if (counter == 1) {
      return;
    }
    setState(() {
      counter -= 1;
    });
  }
}
