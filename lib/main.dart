import 'package:emart/consts/consts.dart';
import 'package:emart/firebase_options.dart';
import 'package:emart/views/splash_screen_view/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: darkFontGrey),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}


