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
    final total = price * counter;
    // final datagridmap = Data();
    return Scaffold(
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "ຈຳນວນ : ",
                                        style: textSimplegrey,
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          remove();
                                        },
                                        icon: const Icon(
                                          Icons.remove,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(counter.toString()),
                                      IconButton(
                                          onPressed: () {
                                            add();
                                          },
                                          icon: const Icon(
                                            Icons.add,
                                            color: Colors.black,
                                          ))
                                    ],
                                  ),
                                  Text(
                                    'ລາຄາ : ${gridmap.gridMap[index]['price']}',
                                    style: textSimplegrey,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color:const Color.fromARGB(255, 68, 147, 212),
        // color: Colors.blue,
        child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> const PaymentDetailScreen()));},
                child: Text(
                  "ລວມ : ${total}",
                  style: textTitleGrey,
                ))),
      ),
    );
  }

  int counter = 1;
  int price = 120000;

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
