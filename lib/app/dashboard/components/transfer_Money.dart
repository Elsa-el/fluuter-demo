import 'package:flutter/material.dart';

class YourContainer extends StatelessWidget {
  final Icon icon;
  final String text;
  final Color color;
  const YourContainer({
    super.key,
    this.color = Colors.grey,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 160,
          height: 130,
          decoration: BoxDecoration(
            // color: Color(0xFFd8c0fc),
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),

          child: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Column(children: [icon, SizedBox(height: 20), Text(text)]),
          ),
        ),
      ],
    );
  }
}
