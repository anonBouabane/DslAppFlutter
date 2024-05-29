import 'package:dslsale/data/data.dart';
import 'package:dslsale/util/textstyle.dart';
import 'package:dslsale/view/Screen/dashboard/detailproduct/detail_product.dart';
import 'package:flutter/material.dart';

class GidviewScreen extends StatefulWidget {
  const GidviewScreen({super.key});

  @override
  State<GidviewScreen> createState() => _GidviewScreenState();
}

class _GidviewScreenState extends State<GidviewScreen> {
  final _gridMap = Data();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // physics:const NeverScrollableScrollPhysics(),
        primary: false,
        itemCount: _gridMap.gridMap.length,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>const DetailProductScreen(),),);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 7,
                      width: MediaQuery.of(context).size.width / 2,
                      child: Image.asset(
                   _gridMap.gridMap[index]['image'],
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      _gridMap.gridMap[index]['title'],
                      style: textSimpleBold,
                    ),
                    Row(
                      children: [
                        const Text(
                          "ລາຄາ : ",
                          style:  textSimpleBold,
                        ),
                        const Spacer(),
                        Text(
                          _gridMap.gridMap[index]['price'],
                          style: textSimpleBold,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
