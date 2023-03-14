import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, true);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: TextButton(
            onPressed: () {
              print("Navigator.defaultRouteName is ${Navigator.defaultRouteName}");

              Navigator.of(context, rootNavigator: true).push(
                MaterialPageRoute(
                  builder: (_) => ScreenB(),
                ),
              );
            },
            child: Text('버튼을 눌러보세요'),
          ),
        ),
      ),
    );
  }
}
