import 'package:dots_boxes_game/features/auth/presentation/views/login_view.dart';
import 'package:dots_boxes_game/features/splash/presentation/views/splash_view_stub.dart';
import 'package:flutter/material.dart';

class SplashViewState extends SplashViewStateStub{

  @override
  void initState() {
    super.initState();


    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) {
        return;
      }
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const LoginView()), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }

}