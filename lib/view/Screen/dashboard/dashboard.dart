import 'package:dslsale/util/images.dart';
import 'package:dslsale/util/textstyle.dart';
import 'package:dslsale/view/Screen/auth/login.dart';
import 'package:dslsale/view/Screen/dashboard/widget/carousel_screen.dart';
import 'package:dslsale/view/Screen/dashboard/widget/product_screen.dart';
import 'package:dslsale/view/Screen/infocusto/info_custo.dart';
import 'package:dslsale/view/Screen/printBill/history_invoice.dart';
import 'package:dslsale/view/Screen/productcart/product_cart.dart';
import 'package:dslsale/view/Screen/profile/profile.dart';
import 'package:dslsale/view/Screen/registerCustomer/register_customer.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        // //=========drawer===========//

        // drawer: const DrawerScreen(),
        // backgroundColor: Colors.white,

        //==========appbar =========//
        appBar: AppBar(
          leadingWidth: MediaQuery.of(context).size.width / 2,
          leading: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      child: Image.asset(
                        Images.profile,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'username',
                        style: textTitlewhite,
                      ),
                      Row(
                        children: [
                          Text(
                            'Active',
                            style: textsimpleWhite,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: CircleAvatar(
                              minRadius: 3,
                              backgroundColor:
                                  Color.fromARGB(255, 116, 227, 119),
                              child: Icon(
                                Icons.check_circle_outlined,
                                size: 16,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: CircleAvatar(radius: 16,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    Images.exitapp,
                    color: Colors.black,
                    scale: 2,
                  ),
                ),
              ),
            )
          ],
          backgroundColor: Colors.blueAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 211, 217, 220),
                ),
                child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                    //=============>>>>>>  carousel <<<<<<<<====================//

                    child: CarouselScreen()),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30),
                child: SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: const Color.fromARGB(255, 211, 217, 220),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //===========>> purchase product <<============
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ProductScreen()));
                                  },
                                  child: Container(
                                    height: 80,
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.shopify_rounded,
                                          size: 35,
                                          color: Colors.blue,
                                        ),
                                        Text(
                                          'ຊື້ສິນຄ້າ',
                                          style: textSimplegrey,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              //===============>>> register customer <<<<===============
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const RegisterCustoScreen()));
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.person_add_alt_1_outlined,
                                          size: 35,
                                          color: Colors.blue,
                                        ),
                                        Text(
                                          'ລົງທະບຽນລູກຄ້າ',
                                          style: textSimplegrey,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              //===============>> customer info <<=============
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const InfoCustomer()));
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.people_outline,
                                          size: 35,
                                          color: Colors.blue,
                                        ),
                                        Text(
                                          'ຂໍ້ມູນລູກຄ້າ',
                                          style: textSimplegrey,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                //=================>>> print invoice <<<<=============
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HistoryInvoice()));
                                  },
                                  child: Container(
                                    height: 80,
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.print,
                                          size: 35,
                                          color: Colors.blue,
                                        ),
                                        Text(
                                          'ລາຍການສັ່ງຊື້',
                                          style: textSimplegrey,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              //===========>>> cart widget <<============
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const CartScreen()));
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.shopping_cart_outlined,
                                          size: 35,
                                          color: Colors.blue,
                                        ),
                                        Text(
                                          'ກະຕ່າສິນຄ້າ',
                                          style: textSimplegrey,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              //===============>>>Profile widget<<===========
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ProfileScreen()));
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.person_pin_outlined,
                                          size: 35,
                                          color: Colors.blue,
                                        ),
                                        Text(
                                          'ເບິ່ງໂປໄຟລ໌',
                                          style: textSimplegrey,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                indent: 70,
                endIndent: 70,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 211, 217, 220),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "DSL",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 106, 189, 231)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
