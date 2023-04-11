import 'dart:async';
import 'package:get/get.dart';
//
import '../../const/consts.dart';
import '../Auth_Screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  @override
  void initState() {
    _timer = Timer(
      const Duration(seconds: 5),
      () async {
        await Get.to(
          () => const LoginScreen(),
        );
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          10.heightBox,
          Expanded(
            child: Image.asset(
              iclogo,
              height: 150,
              width: 150,
            ),
          )
        ],
      ).box.size(double.infinity, double.infinity).alignCenter.make()),
    );
  }
}
