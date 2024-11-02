import 'package:flutter/material.dart';
import 'package:spend_smart/presentation/widgets/icon_label_column_widget.dart';

class AccountActionsRow extends StatelessWidget {
  const AccountActionsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconLabelColumnWidget(
          icon: Icons.arrow_upward,
          label: 'Income',
        ),
        IconLabelColumnWidget(
          icon: Icons.arrow_downward,
          label: 'Expense',
        ),
        IconLabelColumnWidget(
          icon: Icons.refresh,
          label: 'Transfer',
        )
      ],
    );
  }
}
