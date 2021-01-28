import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone/app/routes/routes.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      initialRoute: '/',
      routes: Routes.routes,
      theme: ThemeData(
        primaryColor: Color(0xFF993399),
        accentColor: Colors.purple[400],
        backgroundColor: Color(0xFF993399),
      ),
    );
  }
}
