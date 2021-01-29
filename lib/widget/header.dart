import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import './footer.dart';

class Header extends HookWidget with PreferredSizeWidget{
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    final int count = useProvider(counterProvider).state;
    return AppBar(
      // actions: [],
      title: _buildTitle(count),
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 2.0,
    );
  }
}

Widget _buildTitle(int index) {
  switch (index) {
    case 0:
      return Text(
        'ホーム',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat'
        ),
      );
    case 1:
      return Text(
        '検索',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat'
        ),
      );
    case 2:
      return Text(
        '注文',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat'
        ),
      );
    case 3:
      return Text(
        'アカウント',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat'
        ),
      );
    case 4:
      return Text(
        'Eats パス',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat'
        ),
      );
  }
}
