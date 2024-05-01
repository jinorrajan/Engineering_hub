import 'package:engineering_hub/application/features/screens/login_Screen/login_page.dart';
import 'package:engineering_hub/application/features/screens/selecting_screen/ui/selecting_screen.dart';
import 'package:flutter/material.dart';

class NavigationService {
late GlobalKey<NavigatorState> _navigatorKey;
final Map<String, Widget Function (BuildContext)> _routes = {
"/login": (context) => LoginPage(),
'selctingScreen' : (context) => SelectingScreen(),
};

GlobalKey<NavigatorState>? get navigatorKey{
  return _navigatorKey;
}

Map<String, Widget Function (BuildContext)> get routes {
  return _routes;
}
NavigationService() {
_navigatorKey = GlobalKey<NavigatorState>();
}

void pushNamed(String routeName){
  _navigatorKey.currentState?.pushNamed(routeName);
}

void pushReplacementNamed(String routeName){
  _navigatorKey.currentState?.pushReplacementNamed(routeName);
}

void goBack(){
  _navigatorKey.currentState?.pop();
}
}