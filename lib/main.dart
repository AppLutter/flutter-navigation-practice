import 'package:flutter/material.dart';
import 'package:flutter_navigator_practice/navigator_observer.dart';
import 'package:flutter_navigator_practice/pages/page_a.dart';
import 'package:flutter_navigator_practice/pages/page_b.dart';
import 'package:flutter_navigator_practice/pages/page_c.dart';
import 'package:flutter_navigator_practice/pages/restorable_page_one.dart';

class CustomRoute {
  static const initial = '/';
  static const pageA = '/a';
  static const pageB = '/b';
  static const pageC = '/c';

  static Map<String, WidgetBuilder> routes(BuildContext context) => {
        initial: (context) => MyHomePage(),
        pageA: (context) => PageA(),
        pageB: (context) => PageB(),
        pageC: (context) => PageC(),
      };
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'app',
      navigatorObservers: [
        CustomNavigatorObserver(),
      ],
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.green,
            elevation: 0.0,
          ),
          primarySwatch: Colors.blue),
      routes: CustomRoute.routes(context),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pageOne = PageA();

    return Scaffold(
      appBar: AppBar(
        title: Text('제목'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                // print("Navigator.defaultRouteName is ${Navigator.defaultRouteName}");
                // print(Navigator.canPop(context));

                // print(Navigator.maybeOf(context));

                Navigator.pushNamed(context, CustomRoute.pageA);
                // print(Navigator.canPop(context));
                // print(Navigator.maybeOf(context));
              },
              child: Text('$pageOne로 향합니다'),
            ),
            TextButton(
              onPressed: () {
                // Navigator.restorablePush(
                //     context, (context, arguments) => MaterialPageRoute(builder: (_) => RestorationPageOne()));

                Navigator.restorablePush(context, _buildRoute);
              },
              child: Text('Restore로 이동합니다'),
            ),
          ],
        ),
      ),
    );
  }

  static Route _buildRoute(BuildContext context, Object? params) {
    return MaterialPageRoute<void>(
      builder: (BuildContext context) => RestorationPageOne(),
    );
  }
}
