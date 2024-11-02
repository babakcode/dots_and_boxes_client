import 'package:flutter/material.dart';

class RetrieveAccountView extends StatelessWidget {
  const RetrieveAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // retrieve account ui here
      appBar: AppBar(
        title: const Text(
          'Retrieve Account',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            const Text('Retrieve Account'),
          ],
        )),
      ),
    );
  }
}
