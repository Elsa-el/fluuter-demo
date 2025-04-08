import 'package:demo/app/dashboard/components/custom_box.dart';
import 'package:demo/app/dashboard/dashboard_top_row.dart';
import 'package:demo/app/initial/login.dart';
import 'package:demo/app/dashboard/components/transfer_Money.dart';
import 'package:demo/common/constants.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          color: Constants().primaryColor,

          child: Column(
            children: [
              DashboardRow(),
              Divider(
                color: const Color.fromARGB(255, 132, 86, 139),
                thickness: 2,
              ),
              SizedBox(height: 16),

              SizedBox(
                height: 60,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    //labelText: 'Enter Bill Name',
                    hintText: 'Enter Bill Name ',
                    suffixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromARGB(255, 240, 236, 236),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color.fromARGB(0, 135, 131, 131),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        20,
                      ), // Circular corners
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ), // Invisible border
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 2, left: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    MyContainer(
                      icon: Icon(Icons.access_time),
                      color: Color(0xFFd8c0fc),
                      label: "Recent",
                    ),
                    SizedBox(height: 20, width: 20),
                    MyContainer(
                      icon: Icon(Icons.account_balance_wallet),
                      color: Color(0xFFc2ffe9),
                      label: "Due Bills",
                    ),
                    SizedBox(height: 0, width: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: MyContainer(
                        icon: Icon(Icons.qr_code),
                        color: Color(0xFFc0f2fc),
                        label: 'Quick\nRecharge',
                      ),
                    ),
                    SizedBox(height: 20, width: 20),
                    MyContainer(
                      icon: Icon(Icons.money),
                      color: Color(0xFFffbfc1),
                      label: "My Billers",
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30, right: 200),
                child: Text(
                  'Transfer Money',

                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20, left: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    YourContainer(
                      icon: Icon(
                        Icons.money_off,
                        size: 60,
                        color: Color(0xFF787878),
                      ),
                      text: "Mobile Recharge",
                      color: Color(0xFFf6f5f7),
                    ),
                    SizedBox(height: 20, width: 20),
                    YourContainer(
                      icon: Icon(
                        Icons.person_3,
                        size: 60,
                        color: Color(0xFF787878),
                      ),
                      color: Color(0xFFf6f5f7),
                      text: "DTH Recharge",
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20, left: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    YourContainer(
                      icon: Icon(
                        Icons.electric_bolt,
                        size: 60,
                        color: Color(0xFF787878),
                      ),
                      color: Color(0xFFf6f5f7),
                      text: "Electricity",
                    ),
                    SizedBox(height: 20, width: 20),
                    YourContainer(
                      icon: Icon(
                        Icons.payment,
                        size: 60,
                        color: Color(0xFF787878),
                      ),
                      color: Color(0xFFf6f5f7),
                      text: "Pay Due Bills",
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20, left: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    YourContainer(
                      icon: Icon(
                        Icons.access_time_filled_outlined,
                        size: 60,
                        color: Color(0xFF787878),
                      ),
                      color: Color(0xFFf6f5f7),
                      text: "Any Time Bills",
                    ),
                    SizedBox(height: 20, width: 20),
                    YourContainer(
                      icon: Icon(
                        Icons.account_balance,
                        size: 60,
                        color: Color(0xFF787878),
                      ),
                      color: Color(0xFFf6f5f7),
                      text: "Add/Manage Bills",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
