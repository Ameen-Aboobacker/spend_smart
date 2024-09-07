import 'dart:developer';

import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../core/strings.dart';

class OnbardingPage extends StatelessWidget {
  const OnbardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade700,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 107, left: 37),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardContainer(size: size),
              SizedBox(height: 30),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SPEND',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 75,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'WISE',
                    style: TextStyle(
                        height: 0.45,
                        color: Colors.white,
                        fontSize: 75,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 42),
              Text(
                Strings.caption,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    log('sss');
                  },
                  child: const Text('NEXT'))
            ],
          ),
        ),
      ),
    );
  }
}

class CardContainer extends StatelessWidget {
  const CardContainer({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      transformAlignment: const Alignment(0, 0),
      transform: Matrix4.rotationZ(math.pi / -25),
      height: 200,
      width: 300,
      padding: const EdgeInsets.only(left: 40, top: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 69, 27, 14),
            Color.fromARGB(255, 92, 34, 10),
            Color.fromARGB(255, 242, 92, 47),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Wallet',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '******\t*****',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '**/** : **/**',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '**** **** **** 402',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 2.0,
            ),
          ),
        ],
      ),
    );
  }
}
