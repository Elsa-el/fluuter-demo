import 'package:demo/app/initial/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardRow extends StatelessWidget {
  const DashboardRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        IconButton(
          icon: Icon(Icons.chevron_left, size: 50.0, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
        ),

        Container(
          child: Text(
            'BillPay & Recharge',

            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
        ),

        Spacer(),

        IconButton(
          icon: Icon(Icons.notifications, size: 30.0, color: Colors.black),
          onPressed: () {},
        ),

        IconButton(
          icon: Icon(Icons.menu, size: 30.0, color: Colors.black),
          onPressed: () {},
        ),
      ],
    );
  }
}
