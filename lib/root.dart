// パッケージ
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// ウィジット
import './widget/header.dart';
import './widget/footer.dart';
import './screens/home_page.dart';
import './screens/search_page.dart';
import './screens/order_page.dart';
import './screens/account_page.dart';
import './screens/eatspass_page.dart';

class RootPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final int count = useProvider(counterProvider).state;
    return Scaffold(
      // appBar: Header(),
      body: _buildTemplate(count),
      bottomNavigationBar: Footer(),
    );
  }
}

Widget _buildTemplate(int index) {
  switch (index) {
    case 0:
      return HomePage();
    case 1:
      return SearchPage();
    case 2:
      return OrderPage();
    case 3:
      return AccountPage();
    case 4:
      return EatspassPage();
  }
}
