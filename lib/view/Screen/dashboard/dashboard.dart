import 'package:dslsale/view/Screen/dashboard/detailproduct/product_cart.dart';
import 'package:dslsale/view/Screen/dashboard/widget/carousel_screen.dart';
import 'package:dslsale/view/Screen/dashboard/widget/product_screen.dart';
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
          drawer: const DrawerScreen(),
          backgroundColor: Colors.white,
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const CartScreen()),
                  );
                },
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
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
          body: Stack(
            children: [
              ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 70),
                    child: Column(
                      children: [
                        CarouselScreen(),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 50),
                          child: ProductScreen(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SearchScreen(),
            ],
          ),
        ));
  }
}
