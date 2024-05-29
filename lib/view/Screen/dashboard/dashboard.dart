import 'package:dslsale/view/Screen/dashboard/widget/carousel_screen.dart';
import 'package:dslsale/view/Screen/dashboard/widget/gidview_screen.dart';
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
            centerTitle: true,
            title: const Text(
              "DSL",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            backgroundColor: Colors.blueAccent,
            actions: const [
              Icon(
                Icons.exit_to_app_outlined,
                size: 30,
              ),
            ],
          ),
          body: const SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    SearchScreen(),
                    CarouselDashboard(),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 300),
                  child: Column(
                    children: [GidviewScreen()],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
