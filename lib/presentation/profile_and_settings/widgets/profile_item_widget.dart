import 'package:flutter/material.dart';
import 'package:spend_smart/core/colors.dart';

class ProfileItemWidget extends StatelessWidget {
  const ProfileItemWidget({
    super.key,
    required this.leadingIcon,
    required this.leadingColor,
    required this.trailingIcon,
    required this.label,
    required this.onTap,
  });
  final IconData leadingIcon;
  final Color leadingColor;
  final IconData trailingIcon;

  final String label;

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        child: Row(
          children: [
            Icon(
              leadingIcon,
              color: leadingColor,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
            Icon(
              trailingIcon,
              size: 18,
              color: AppColors.primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
