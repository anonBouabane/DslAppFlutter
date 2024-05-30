import 'package:dslsale/util/images.dart';
import 'package:dslsale/util/textstyle.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        title: const Text(
          "ໂປຣໄຟລ໌",
          style: textTitlewhite,
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                Images.background1,
                fit: BoxFit.cover,
              )),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(
                children: [
                  Center(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(Images.elon),
                  )),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                            height: 100,
                            child: Card(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "ຊື່ : ອີ່ລອນ",
                                      style: textTitleGrey,
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.edit,
                                      color: Colors.blueGrey,
                                    )
                                  ],
                                ),
                              ),
                            )),
                        SizedBox(
                            height: 100,
                            child: Card(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "ອາຍຸ : 21",
                                      style: textTitleGrey,
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.edit,
                                      color: Colors.blueGrey,
                                    )
                                  ],
                                ),
                              ),
                            )),
                        SizedBox(
                            height: 100,
                            child: Card(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "ເບີໂທ : 2077995490",
                                      style: textTitleGrey,
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.edit,
                                      color: Colors.blueGrey,
                                    )
                                  ],
                                ),
                              ),
                            )),
                        SizedBox(
                            height: 100,
                            child: Card(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "ບ້ານ : ໂພນສະຫວາດເຫນືອ",
                                      style: textTitleGrey,
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.edit,
                                      color: Colors.blueGrey,
                                    )
                                  ],
                                ),
                              ),
                            )),
                        SizedBox(
                            height: 100,
                            child: Card(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "ເມືອງ : ສີໂຄດ",
                                      style: textTitleGrey,
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.edit,
                                      color: Colors.blueGrey,
                                    )
                                  ],
                                ),
                              ),
                            )),
                        SizedBox(
                            height: 100,
                            child: Card(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "ແຂວງ : ນະຄອນຫລວງ",
                                      style: textTitleGrey,
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.edit,
                                      color: Colors.blueGrey,
                                    )
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
