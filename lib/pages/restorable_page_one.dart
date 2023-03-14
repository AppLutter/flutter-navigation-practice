import 'package:flutter/material.dart';

class RestorationPageOne extends StatefulWidget {
  const RestorationPageOne({Key? key}) : super(key: key);

  @override
  State<RestorationPageOne> createState() => _RestorationPageOneState();
}

class _RestorationPageOneState extends State<RestorationPageOne> with RestorationMixin {
  RestorableInt count = RestorableInt(0);

  void addCount() {
    setState(() {
      count.value++;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('버튼을 눌러보세요'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addCount,
        child: Text(
          count.value.toString(),
        ),
      ),
    );
  }

  @override
  String? get restorationId => widget.toString();

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(count, 'count');
  }
}
