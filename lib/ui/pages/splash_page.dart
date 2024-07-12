import 'package:flutter/material.dart';
import 'package:garudahack_priasigmas/routes/router.dart';
import 'package:garudahack_priasigmas/shared/theme/themes.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){
      router.goNamed(RouteNames.signIn);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor ,
      body: Center(
        child: Image.asset('assets/ic_logo.png'),
      ),
    );
  }
}