import 'package:flutter/material.dart';
import 'package:flutter_navigator_practice/main.dart';
import 'package:flutter_navigator_practice/pages/page_a.dart';
import 'package:flutter_navigator_practice/pages/page_c.dart';

class PageB extends StatefulWidget {
  const PageB({Key? key}) : super(key: key);

  @override
  State<PageB> createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  @override
  void initState() {
    super.initState();
    print(Navigator.maybeOf(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () async {
            final result = await Navigator.pushNamed(context, CustomRoute.pageC);
            print('result is $result');

            /// true가 될 때까지 pop
            // Navigator.popUntil(context, ModalRoute.withName('/'));
            // Navigator.popUntil(context, (route) => route.isFirst);

            // Navigator.pushAndRemoveUntil(
            //   context,
            //   MaterialPageRoute(
            //     builder: (_) => PageC(),
            //   ),
            //   (route) => route.isFirst,
            // );

            // Navigator.of(context).removeRoute(ModalRoute.of(context)!);
          },
          child: Text('버튼을 눌러보세요2'),
        ),
      ),
    );
  }
}
