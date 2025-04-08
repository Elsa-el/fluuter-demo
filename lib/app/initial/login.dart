// login.dart
import 'package:demo/app/dashboard/dashboard_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _mpinController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _login() {
    if (_formKey.currentState!.validate()) {
      String email = _emailController.text;
      // ignore: unused_local_variable
      String mpin = _mpinController.text;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DashboardPage()),
      );

      // Handle the login logic here (for example, authenticating the user)

      // For now, show a simple snackbar as a success message
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Logged in as $email')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/images.png', width: 600),

                // Space between logo and input fields
                SizedBox(height: 10),

                // Bold "Login" Text
                Align(
                  alignment: Alignment.centerLeft,
                  child: Stack(
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,

                          decorationColor: Color(0xFF8a78ff),
                          decorationThickness: 3,
                        ),
                      ),
                      Positioned(
                        bottom:
                            0, // Adjust this value to set the height between the text and the underline
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Color(0xFF8a78ff), // Color of the underline
                          height: 5, // Thickness of the underline
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),

                // Login form
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // Email (or Username) field
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Username/Email',
                          suffixIcon: Icon(Icons.email),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              20,
                            ), // Circular border
                            borderSide: BorderSide(
                              color:
                                  Colors
                                      .transparent, // Transparent when not focused
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              20,
                            ), // Circular border
                            borderSide: BorderSide(
                              color: Colors.blue, // Transparent when focused
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xfff5f5f5),
                          hintText: 'Enter your Username or email',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your username or email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ), // Space between email and mpin fields
                      // MPIN field
                      TextFormField(
                        controller: _mpinController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'MPIN',
                          suffixIcon: Icon(Icons.lock),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: Color(0xfff5f5f5),
                          hintText: 'Enter your MPIN',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your MPIN';
                          }
                          if (!RegExp(r'^[0-9]{4}$').hasMatch(value)) {
                            return 'MPIN should be 4-digit number';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        height: 10,
                      ), // Space between fields and login button

                      SizedBox(height: 0),
                      Container(
                        padding: EdgeInsets.only(top: 0),
                        alignment: Alignment.centerRight,
                        child: Text("Forgot MPIN"),
                      ),
                      SizedBox(height: 30),

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff19264e),
                            ),
                          ),
                          SizedBox(width: 10),
                          // Make the chevron icon the tappable button with no splash/ highlight effect
                          InkWell(
                            onTap: _login, // Call _login when chevron is tapped
                            splashColor:
                                Colors.transparent, // Disable splash effect
                            highlightColor:
                                Colors.transparent, // Disable highlight effect
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff273b5c),
                              ),
                              padding: EdgeInsets.all(
                                10,
                              ), // Padding for the chevron icon itself
                              child: Icon(
                                Icons.chevron_right,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
