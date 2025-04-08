import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Icon icon;
  final String label;
  final Color color;
  const MyContainer({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 80,
          decoration: BoxDecoration(
            // color: Color(0xFFd8c0fc),
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),

          child: icon,
        ),
        SizedBox(height: 10),
        Text(label, textAlign: TextAlign.center),
      ],
    );
  }
}
