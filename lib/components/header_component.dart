import 'package:flutter/material.dart';



class HeaderComponent extends StatelessWidget {
  const HeaderComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          Text('Recipies App'),
          Icon(Icons.info),
        ],
      ),
    );;
  }
}
