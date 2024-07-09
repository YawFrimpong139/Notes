import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  final String title;
  final Widget leading;
  void Function()? onTap;

  MyDrawerTile({
    super.key,
    required this.title,
    required this.leading,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, top: 15.0),
      child: ListTile(
        title: Text(
          title,
          // style: TextStyle(
          //   color: Theme.of(context).colorScheme.inversePrimary,
          //   fontSize: 25,
          //   fontWeight: FontWeight.normal,
          // ),
        ),
        leading: leading,
        onTap: onTap,
      ),
    );
  }
}
