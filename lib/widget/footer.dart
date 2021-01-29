import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


final counterProvider = StateProvider((ref) => 0);

class Footer extends HookWidget{
  @override
  Widget build(BuildContext context) {
    final int count = useProvider(counterProvider).state;

    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        onTap: (index) => context.read(counterProvider).state = index,
        currentIndex: count,
        elevation: 5.0,
        items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('ホーム'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('検索'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.label),
              title: Text('注文'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('アカウント'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.label),
              title: Text('Eats パス'),
            ),
        ]
    );
  }
}
