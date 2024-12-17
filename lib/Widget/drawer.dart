import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/nav.dart';

class DrawerShow extends StatelessWidget {
  const DrawerShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    leading: Icon(navIcon[index]),
                    title: Text(nav[index]),
                  );
                },
                itemCount: nav.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
