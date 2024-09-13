import 'dart:developer';

import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../core/strings.dart';

class OnbardingPage extends StatelessWidget {
  const OnbardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 95, left: 37),
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage("assets/images/bg_png.png")),
      ),
      width: double.infinity,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardContainer(size: size),
              const SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SPEND',
                    style: TextStyle(
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..color = Colors.white
                          ..strokeWidth = 1,
                        fontSize: 75,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'WISE',
                    style: TextStyle(
                        height: 0.45,
                        color: Colors.white,
                        fontSize: 75,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 42),
              SizedBox(
                width: 250,
                child: Text(
                  Strings.caption,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                        side: const BorderSide(
                          color: Color.fromARGB(255, 244, 170, 147),
                        ),
                      ),
                      fixedSize: const Size(160, 50),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      textStyle: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      log('sss');
                    },
                    child: const Text('NEXT'),
                  ),
                  const SizedBox(width: 25)
                ],
              )
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
        boxShadow: const [
          BoxShadow(offset: Offset(-10, -14), color: Colors.grey),
        ],
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
