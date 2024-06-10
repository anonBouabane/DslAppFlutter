import 'package:dslsale/data/data_dump.dart';
import 'package:dslsale/util/textstyle.dart';
import 'package:dslsale/view/Screen/dashboard/detailproduct/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final gridMap = Data();
  @override
  Widget build(BuildContext context) {
//================ tap to detail ================//

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const DetailProductScreen()));
      },

      //================ lIst view ===============//
      child: ListView.builder(
          shrinkWrap: true,
          primary: false,
          itemCount: 10,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: SizedBox(
                  height: 80,

                  //==================== card Listtile ================//

                  child: Card(
                      child: ListTile(
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),

                      //=================== icon cart =================//

                      child: IconButton(
                          onPressed: () {
                            final snackBar = SnackBar(
                              content: const Text("ເພີ່ມເຂົ້າກະຕ່າສຳເລັດ"),
                              action: SnackBarAction(
                                  label: "Undo", onPressed: () {}),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          icon: const Icon(Icons.add_shopping_cart_outlined)),
                    ),
                    title: Text(
                      '${gridMap.gridMap[index]['title']}',
                      style: textSimplegrey,
                    ),
                    subtitle: Text(
                      '${gridMap.gridMap[index]['price']} LAK',
                      style: textSimplegrey,
                    ),
                  ))),
            );
          }),
    );
  }
}
