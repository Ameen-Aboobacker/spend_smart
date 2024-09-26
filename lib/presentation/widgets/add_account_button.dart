import 'package:flutter/material.dart';

class AddAccountButton extends StatelessWidget {
  final VoidCallback onAdd;
  const AddAccountButton({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onAdd,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        height: 55,
        width: 130,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Add New',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 3),
            Icon(
              Icons.add_circle_outline,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
