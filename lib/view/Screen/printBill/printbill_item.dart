import 'package:dslsale/data/data_dump.dart';
import 'package:dslsale/util/textstyle.dart';
import 'package:dslsale/view/Screen/dashboard/widget/search_screen.dart';
import 'package:flutter/material.dart';

class PrintbillScreen extends StatefulWidget {
  const PrintbillScreen({super.key});

  @override
  State<PrintbillScreen> createState() => _PrintbillScreenState();
}

class _PrintbillScreenState extends State<PrintbillScreen> {
  final mapData = Data();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "ລາຍການສັ່ງຊື້",
          style: textTitlewhite,
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Stack(
          children: [
            const SearchScreen(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
              child: SingleChildScrollView(
                child: GestureDetector(
                  onTap: () {},
                  child: ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 220,
                          child: Card(
                              child: ListTile(
                            title: Column(
                              children: [
                                Center(
                                  child: Text(
                                    "ເລກບິນ:${mapData.history[index]['id'].toString()}",
                                    style: textTitle,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'ສະຖານະບິນ : ${mapData.history[index]['status']}',
                                      style: textTitleGrey,
                                    ),
                                    mapData.history[index]['status'] ==
                                            "ຍັງບໍ່ຊຳລະຄ້າງຈ່າຍ"
                                        ? const Icon(
                                            Icons.cancel,
                                            color: Colors.red,
                                          )
                                        : const Icon(
                                            Icons.check_circle,
                                            color: Colors.green,
                                          )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'ຊື່ລູກຄ້າ : ${mapData.history[index]['custoName']}',
                                          style: textSimplegrey,
                                        ),
                                        const Spacer(),
                                        Text(
                                          "ວັນທີສົ່ງ : ${mapData.history[index]['date']}",
                                          style: textSimplegrey,
                                        )
                                      ],
                                    ),
                                    Text(
                                      'ເບີໂທລູກຄ້າ : ${mapData.history[index]['phone']}',
                                      style: textSimplegrey,
                                    ),
                                    Text(
                                      'ສະຖານທີ່ສົ່ງ : ${mapData.history[index]['address']}',
                                      style: textSimplegrey,
                                    ),
                                    Text(
                                      'ເມືອງ : ${mapData.history[index]["distric"]}',
                                      style: textSimplegrey,
                                    ),
                                    Text(
                                      'ແຂວງ : ${mapData.history[index]['province']}',
                                      style: textSimplegrey,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
