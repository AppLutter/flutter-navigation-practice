import 'package:flutter/material.dart';
import 'package:flutter_navigator_practice/main.dart';
import 'package:flutter_navigator_practice/pages/page_b.dart';

class PageC extends StatefulWidget {
  const PageC({Key? key}) : super(key: key);

  @override
  State<PageC> createState() => _PageCState();
}

class _PageCState extends State<PageC> {
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
            // Navigator.pushAndRemoveUntil(
            //   context,
            //   MaterialPageRoute(
            //     builder: (_) => PageB(),
            //   ),
            //   (route) => route.isFirst,
            // );
            print(ModalRoute.of(context)?.settings.arguments);
            // Navigator.of(context).removeRoute(route)
            // Navigator.removeRoute(
            //   context,
            //      ModalRoute.withName(CustomRoute.pageB)
            // );
          },
          child: Text('버튼을 눌러보세요3'),
        ),
      ),
    );
  }
}
