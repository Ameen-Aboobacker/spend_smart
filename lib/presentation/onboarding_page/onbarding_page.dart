import 'package:flutter/material.dart';
import 'package:moneymanager/presentation/home_page/home_page.dart';

import '../../core/strings.dart';
import '../widgets/card_container.dart';

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
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
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
