import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:moneymanager/presentation/home_page/widgets/expense_structure_section.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import 'widgets/accounts_section.dart';
import 'widgets/transaction_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ValueNotifier<int> navValue = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    log('Home');

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/1-2-scaled.jpg'),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            children: const [
              AccountsSection(),
              SizedBox(height: 10),
              TransactionSection(),
              SizedBox(height: 10),
              ChartAnalysisSection(),
              SizedBox(height: 25),
            ],
          ),
        ),
        floatingActionButton: SpeedDial(
          icon: Icons.add,
          activeIcon: Icons.close,
          dialRoot: (ctx, open, toggleChildren) {
            return open
                ? SpeedDial(
                    onPress: () {},
                    icon: Icons.edit,
                  )
                : SpeedDial(
                    onPress: toggleChildren,
                    child: const Icon(Icons.add),
                  );
          },
          children: [
            SpeedDialChild(
              label: 'New Account',
              child: const Icon(Icons.add_to_photos_outlined),
              backgroundColor: Colors.red,
            ),
            SpeedDialChild(
                label: 'New Account',
                child: const Icon(Icons.add_to_photos_outlined)),
            SpeedDialChild(
                label: 'New Account',
                child: const Icon(Icons.add_to_photos_outlined)),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: ValueListenableBuilder(
            valueListenable: navValue,
            builder: (context, navgvalue, _) {
              log(navValue.toString());
              return StylishBottomBar(
                elevation: 8,
                fabLocation: StylishBarFabLocation.end,
                hasNotch: true,
                notchStyle: NotchStyle.circle,
                currentIndex: navgvalue,
                onTap: (value) => navValue.value = value,
                items: [
                  BottomBarItem(
                      icon: const Icon(Icons.dashboard),
                      title: const Text(
                        'Dashboard',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      showBadge: true,
                      badge: const Text(
                        '90+',
                        style: TextStyle(fontSize: 8),
                      ),
                      backgroundColor: Colors.green.shade700),
                  BottomBarItem(
                      icon: const Icon(Icons.notes_sharp),
                      title: const Text('Transactions'),
                      backgroundColor: Colors.green.shade700),
                  BottomBarItem(
                      icon: const Icon(Icons.notes_sharp),
                      title: const Text('Transactions'),
                      backgroundColor: Colors.green.shade700),
                  BottomBarItem(
                      icon: const Icon(Icons.notes_sharp),
                      title: const Text(
                        'Transactions',
                      ),
                      backgroundColor: Colors.green.shade700)
                ],
                option: BubbleBarOptions(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    bubbleFillStyle: BubbleFillStyle.outlined,
                    iconSize: 20,
                    barStyle: BubbleBarStyle.horizontal),
              );
            }),
      ),
    );
  }
}
