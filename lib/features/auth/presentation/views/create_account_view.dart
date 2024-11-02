import 'package:flutter/material.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Account')),  
        // create account ui here
        body: SafeArea(
        
          child: Center(
            child: Column(children: [
              const Text('Create Account'),
            ],)
          ),),
    );
  }
}