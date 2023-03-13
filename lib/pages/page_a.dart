import 'package:flutter/material.dart';
import 'package:flutter_navigator_practice/pages/page_b.dart';

class PageA extends StatefulWidget {
  const PageA({Key? key}) : super(key: key);

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  @override
  void initState() {
    super.initState();
    print(Navigator.maybeOf(context, rootNavigator: true));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () {
            print("Navigator.defaultRouteName is ${Navigator.defaultRouteName}");

            Navigator.of(context, rootNavigator: true).push(
              MaterialPageRoute(
                builder: (_) => PageB(),
              ),
            );
          },
          child: Text('버튼을 눌러보세요'),
        ),
      ),
    );
  }
}
