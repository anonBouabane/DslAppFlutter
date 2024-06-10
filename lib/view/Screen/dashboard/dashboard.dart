import 'package:dslsale/view/Screen/productcart/product_cart.dart';
import 'package:dslsale/view/Screen/dashboard/widget/product_screen.dart';
import 'package:dslsale/view/Screen/dashboard/widget/product_type.dart';
import 'package:dslsale/view/Screen/dashboard/widget/search_screen.dart';
import 'package:dslsale/view/widget/drawer.dart';
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
          //=========drawer===========//

          drawer: const DrawerScreen(),
          backgroundColor: Colors.white,

          //==========appbar =========//
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const CartScreen()),
                  );
                },

                //=============== icon appbar ================//

                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                  size: 25,
                ),
              )
            ],
            iconTheme: const IconThemeData(color: Colors.white),
            centerTitle: true,
            title: const Text(
              "ຫນ້າຫລັກ",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            backgroundColor: Colors.blueAccent,
          ),

          //==========content=========//

          body: Stack(
            children: [
              const SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 135),
                      child: ProductScreen(),
                    ),
                  ],
                ),
              ),

//================ widget search ==============//
              Container(
                height: 130,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Column(
                  children: [
                    SearchScreen(),

//================ product type ==============//

                    ProductTypeScreen(),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
