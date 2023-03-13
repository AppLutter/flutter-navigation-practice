import 'package:flutter/cupertino.dart';

class CustomNavigatorObserver extends NavigatorObserver{



  @override
  void didStopUserGesture() {
    print('didStopUserGesture');
  }

  @override
  void didStartUserGesture(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('didStopUserGesture 발생');
    print(route);
    print(previousRoute);
    print('didStopUserGesture 끝');

  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    print('didReplace 발생');
    print(newRoute);
    print(oldRoute);
    print('didReplace 끝');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('didRemove 발생');
    print(route);
    print(previousRoute);
    print('didRemove 끝');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('didPop 발생');
    print(route);
    print(previousRoute);
    print('didPop 끝');
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('didPush 발생');
    print(route);
    print(previousRoute);
    print('didPush 끝');
  }
}