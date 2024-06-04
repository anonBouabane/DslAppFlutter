import 'package:dslsale/data/data_dump.dart';
import 'package:dslsale/util/textstyle.dart';
import 'package:dslsale/view/Screen/dashboard/payment/payment_detail.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final gridmap = Data();
    return Scaffold(

      //================appbar==============//
      
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        backgroundColor: Colors.blue,
        title: const Text(
          'ກະຕ່າສິນຄ້າ',
          style: textTitlewhite,
        ),
        centerTitle: true,
      ),

      //================content==============//

      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                primary: false,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 200,
                    child: Card(
                      child: ListTile(
                        title: Row(
                          children: [
                            Center(
                              child: Image.asset(
                                gridmap.gridMap[index]['image'],
                                scale: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),

      //===========>>bottomappbar================

      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 68, 147, 212),
        // color: Colors.blue,
        child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PaymentDetailScreen()));
                },
                child: const Text(
                  "ຊຳລະ",
                  style: textTitleGrey,
                ))),
      ),
    );
  }
}
