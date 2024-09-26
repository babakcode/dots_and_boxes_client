import 'package:flutter/material.dart';

class ContainerGradient extends StatelessWidget {
  final Widget child;

  const ContainerGradient({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
        color: Colors.black87,
        // child: DecoratedBox(
        //   decoration: const BoxDecoration(
        //       image: DecorationImage(
        //     image: AssetImage('assets/images/bg-game.jpg'),
        //     fit: BoxFit.cover,
        //     alignment: Alignment.center,
        //   )),
        //   child: child,
        // ),
      child: Stack(
        children: [
          // First radial gradient
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: const Alignment(-0.5, -0.5),
                radius: 0.5,
                colors: [Colors.blue, Colors.purple],
                stops: [0.3, 1.0],
              ),
            ),
          ),
          // Second radial gradient
          // Container(
          //   decoration: BoxDecoration(
          //     gradient: RadialGradient(
          //       center: const Alignment(0.5, 0.5),
          //       radius: 0.6,
          //       colors: [Colors.orange, Colors.red],
          //       stops: [0.4, 1.0],
          //     ),
          //   ),
          // ),
          // Third radial gradient
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: const Alignment(0.8, -.9),
                radius: 0.7,
                colors: [
                  Theme.of(context).colorScheme.primaryContainer, Theme.of(context).colorScheme.surface],
                stops: const [
                  0,
                  .9
                ],
              ),
            ),
          ),
          child
        ],
      ),

    );
  }
}
