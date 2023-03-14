import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator_practice/main.dart';
import 'package:flutter_navigator_practice/pages/page_a.dart';
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
    // print(Navigator.maybeOf(context, rootNavigator: true));
  }

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
          child: IgnorePointer(
            ignoring: false,
            child: TextButton(
              onPressed: () {
                // /// 더 이상 pop할 수 있는지, false인 상태에서 pop을 해버리면 검은 화면이 된다.
                // Navigator.of(context).canPop();
                //
                // ///defaultGenerateInitialRoutes(NavigatorState navigator, String initialRouteName) → List<Route>
                // /// TODO
                // // Navigator.defaultGenerateInitialRoutes(navigator, initialRouteName)
                //
                // /// maybeOf : 만약 Navigator가 있으면 상태 받아오기 == nullable임
                // /// of : 확정 Navigator 상태 받아오기
                // Navigator.maybeOf(context);
                // Navigator.of(context);
                //
                // /// 현재 가장 위에 있는 Route를 pop
                // /// NavigatorObserver에 didpop도 전달함
                // Navigator.pop(context);
                //
                // /// 현재 가장 위에 있는 Route를 pop한 후에 named Route를 push 한다.
                // /// NavigatorObserver에는 didPop, didPush 전달
                // Navigator.popAndPushNamed(context, CustomRoute.pageC);
                //
                // /// (route) => 조건이 true가 될 때까지 pop이 일어남
                // Navigator.popUntil(context, (route) => route.isFirst);
                //
                // /// 지정한 Route를 push해준다.
                // /// didPush 발생함
                // Navigator.push(context, CupertinoPageRoute(builder: (_) => PageB()));
                // Navigator.pushNamed(context, CustomRoute.pageC);
                //
                // /// (route) => 조건이 true가 될 때까지 pop한 후
                // /// 지정한 Route를 푸시한다.
                // /// didPush 및 didRemove 발생
                // Navigator.pushAndRemoveUntil(
                //     context, MaterialPageRoute(builder: (_) => PageA()), (route) => route.isFirst);
                // Navigator.pushNamedAndRemoveUntil(context, CustomRoute.pageB, (route) => route.isFirst);
                //
                // /// 현재 페이지를 replace한다
                // /// didReplace 발생
                // /// result에 값을 넣으면 값을 반환한 뒤에 Replace 한다.
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => PageA()));
                // Navigator.pushReplacementNamed(context, CustomRoute.pageA);
                //
                // /// result(반환 값)과 pop 애니메이션이 없는 채로 현재 Route를 제거한다.
                // /// Observer에는 didRemove가 전달된다.
                // /// 주어진 Route가 history에 있어야 한다. 아니면 throw
                // Navigator.removeRoute(context, ModalRoute.of<dynamic>(context)!);

                // /// 바로 이전 Route 삭제
                // /// didRemove 발생
                // Navigator.removeRouteBelow(context, ModalRoute.of<dynamic>(context)!);

                // /// 현재 Route 애니메이션 없이 대체
                // /// didReplace 발생
                // Navigator.replace(context,
                //     oldRoute: ModalRoute.of<dynamic>(context)!, newRoute: MaterialPageRoute(builder: (_) => PageA()));

                // /// 이전 Route 애니메이션 없이 대체
                // /// didReplace 발생
                // Navigator.replaceRouteBelow(context, anchorRoute: ModalRoute.of<dynamic>(context)!, newRoute: MaterialPageRoute(builder: (_) => MyHomePage()));

                

              },
              child: Text('버튼을 눌러보세요3'),
            ),
          ),
        ),
      ),
    );
  }
}
