import 'package:flutter/material.dart';
import 'package:spend_smart/core/colors.dart';
import 'package:spend_smart/presentation/profile_and_settings/widgets/profile_item_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          children: [
            Container(
              height: height / 7.2,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/images/user_icon.jpg'),
                ),
                shape: BoxShape.circle,
                border: Border.all(),
                color: Colors.amber.shade200,
              ),
            ),
            const SizedBox(height: 15),
            Column(
              children: [
                Text(
                  'Ameen Grace',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor),
                ),
                Text(
                  'ameenkaboobacker95@gmail.com',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileItemWidget(
                    label: 'Preferences',
                    leadingIcon: Icons.settings_suggest_rounded,
                    leadingColor: Colors.green,
                    trailingIcon: Icons.arrow_forward_ios_rounded,
                    onTap: () {},
                  ),
                  ProfileItemWidget(
                    label: 'Summary',
                    leadingIcon: Icons.home,
                    leadingColor: Colors.green,
                    trailingIcon: Icons.arrow_forward_ios_rounded,
                    onTap: () {},
                  ),
                  ProfileItemWidget(
                    label: 'Export',
                    leadingIcon: Icons.document_scanner,
                    leadingColor: Colors.green,
                    trailingIcon: Icons.arrow_forward_ios_rounded,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileItemWidget(
                    label: 'Statistics',
                    leadingIcon: Icons.bar_chart_rounded,
                    leadingColor: Colors.green,
                    trailingIcon: Icons.arrow_forward_ios_rounded,
                    onTap: () {},
                  ),
                  ProfileItemWidget(
                    label: 'Debts',
                    leadingIcon: Icons.monetization_on_outlined,
                    leadingColor: Colors.purple,
                    trailingIcon: Icons.arrow_forward_ios_rounded,
                    onTap: () {},
                  ),
                  ProfileItemWidget(
                    label: 'Shopping',
                    leadingIcon: Icons.shopping_cart_rounded,
                    leadingColor: Colors.amber,
                    trailingIcon: Icons.arrow_forward_ios_rounded,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileItemWidget(
                    label: 'Help & FAQ',
                    leadingIcon: Icons.help_outline_rounded,
                    leadingColor: Colors.green,
                    trailingIcon: Icons.arrow_forward_ios_rounded,
                    onTap: () {},
                  ),
                  ProfileItemWidget(
                    label: 'Settings',
                    leadingIcon: Icons.settings,
                    leadingColor: Colors.black,
                    trailingIcon: Icons.arrow_forward_ios_rounded,
                    onTap: () {},
                  ),
                  ProfileItemWidget(
                    label: 'Logout',
                    leadingIcon: Icons.power_settings_new,
                    leadingColor: Colors.red,
                    trailingIcon: Icons.arrow_forward_ios_rounded,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*statistics
debts
shopping
 */