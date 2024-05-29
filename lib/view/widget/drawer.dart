import 'package:dslsale/util/textstyle.dart';
import 'package:dslsale/view/widget/listtile_drawer.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Anon BOUABANE', style: textTitlewhite),
              ],
            ),
          ),
          ListTileDrawer(
              textTile: "ເບິ່ງໂປຮຟາຍ",
              style: textSimple,
              icon: Icons.person_outline_outlined),
          ListTileDrawer(
              textTile: "ປີ້ນປິນ", style: textSimple, icon: Icons.print),
          ListTileDrawer(
              textTile: "ລົງທະບຽນລູກຄ້າ",
              style: textSimple,
              icon: Icons.group_add_outlined),
          ListTileDrawer(
              textTile: "ປະຫວັດການສັ່ງຊື້ສິນຄ້າ",
              style: textSimple,
              icon: Icons.history),
          const Divider(),
          ListTileDrawer(
              textTile: "ອອກຈາກລະບົບ",
              style: textSimple,
              icon: Icons.exit_to_app)
        ],
      ),
    );
  }
}
