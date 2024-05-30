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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: [
              Padding(
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Name ",
                                      style: textSimple,
                                    ),
                                    Text(
                                      "anon bouaban",
                                      style: textTitle,
                                    )
                                  ],
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
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ເພດ  ",
                                      style: textSimple,
                                    ),
                                    Text(
                                      "ຊາຍ",
                                      style: textTitle,
                                    )
                                  ],
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
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ອາຍຸ  ",
                                      style: textSimple,
                                    ),
                                    Text(
                                      "21 ປີ",
                                      style: textTitle,
                                    )
                                  ],
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
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ພະແນກ",
                                      style: textSimple,
                                    ),
                                    Text(
                                      "ພະນັກງານຂົນສົ່ງສາຂາ 2",
                                      style: textTitle,
                                    )
                                  ],
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
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ເບີໂທ ",
                                      style: textSimple,
                                    ),
                                    Text(
                                      "77995490",
                                      style: textTitle,
                                    )
                                  ],
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
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ບ້ານ ",
                                      style: textSimple,
                                    ),
                                    Text(
                                      "ໂພນສະຫວາດເຫນືອ",
                                      style: textTitle,
                                    )
                                  ],
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
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ເມືອງ ",
                                      style: textSimple,
                                    ),
                                    Text(
                                      "ສີໂຄດ",
                                      style: textTitle,
                                    ),
                                  ],
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
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ແຂວງ",
                                      style: textSimple,
                                    ),
                                    Text(
                                      "ນະຄອນຫລວງ",
                                      style: textTitle,
                                    )
                                  ],
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
    );
  }
}
