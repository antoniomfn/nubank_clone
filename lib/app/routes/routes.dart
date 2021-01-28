import 'package:nubank_clone/app/pages/home/home_controller.dart';
import 'package:nubank_clone/app/pages/home/home_page.dart';
import 'package:provider/provider.dart';

class Routes {
  static var routes = {
    HomePage.routeName: (context) => ChangeNotifierProvider(
          create: (_) => HomeController(),
          child: HomePage(),
        ),
  };
}
