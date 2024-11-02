import 'package:flutter/material.dart';
import 'package:spend_smart/core/colors.dart';

import 'package:spend_smart/presentation/home_page/widgets/account_actions_row.dart';
import 'package:spend_smart/presentation/home_page/widgets/balance_tab_decoration.dart';
import 'package:spend_smart/presentation/home_page/widgets/balance_widget.dart';
import 'package:spend_smart/presentation/home_page/widgets/custom_app_bar.dart';
import 'package:spend_smart/presentation/home_page/widgets/home_decoration.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
    required this.size,
    required this.user,
    required this.items,
    required this.selected,
    required this.totalBalance,
  });

  final Size size;
  final String user;
  final String selected;
  final num totalBalance;
  final List<PopupMenuItem> items;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: HomeDecoration(),
      child: Container(
        padding: const EdgeInsets.fromLTRB(25, 47, 15, 0),
        height: size.height * 0.48,
        child: Column(
          children: [
            CustomAppBar(user: user),
            const SizedBox(height: 30),
            CustomPaint(
              painter: BalanceTabDecoration(),
              child: SizedBox(
                height: 165,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        showMenu(
                            context: context,
                            position: const RelativeRect.fromLTRB(0, 150, 0, 0),
                            items: items);
                      },
                      child: SizedBox(
                        width: 155,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              selected,
                              style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_drop_down,
                                color: AppColors.primaryColor)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    BalanceWidget(totalBalance: totalBalance),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const AccountActionsRow()
          ],
        ),
      ),
    );
  }
}
