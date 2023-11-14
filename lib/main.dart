import 'package:emart/consts/consts.dart';
import 'package:emart/views/splash_screen_view/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        fontFamily: regular,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
      ),
      home: const SplashScreen(),
    );
  }
}
