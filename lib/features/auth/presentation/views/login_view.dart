// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dots_boxes_game/features/auth/presentation/views/create_account_view.dart';
import 'package:dots_boxes_game/features/auth/presentation/views/retrieve_account_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxWidth: 350,
                    maxHeight: 300,
                    minHeight: 300,
                    minWidth: 350),
                child: Image.asset(
                  'assets/images/dot_splash.png',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  const Text('Login'),
                  if(kIsWeb) const SizedBox(
                    height: 8,
                  ),
                  FilledButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAccountView()));
                    },

                    child: const Text('Create a new account'),
                  ),
                  if(kIsWeb) const SizedBox(
                    height: 8,
                  ),
                  FilledButton.tonal(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RetrieveAccountView()));
                    },
                    child: const Text('Retrieve existing account'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
