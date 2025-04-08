import 'package:demo/app/initial/login.dart';
import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  // No need to explicitly define the 'key' parameter.
  const FrontPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // First image
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                width: 420, // Increased container size
                height: 420, // Increased container size
                decoration: BoxDecoration(
                  color: Colors.blue, // Background color (can be adjusted)
                ),
                child: Image.asset(
                  'assets/images/pic1.png',
                  width: 420, // Adjust image size accordingly
                  height: 460,
                  fit: BoxFit.cover, // Ensure image covers the container
                ),
              ),
            ),
            const SizedBox(height: 50), // Space between images
            // Second image
            Image.asset('assets/images/images.png', width: 500, height: 200),
            const SizedBox(
              height: 60,
            ), // Space for additional widgets if needed
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff273b5c),
                ),
                padding: EdgeInsets.all(
                  10,
                ), // Padding for the chevron icon itself
                child: Icon(Icons.chevron_right, color: Colors.white, size: 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(
      0,
      size.height - 30,
    ); // Start drawing from just above the bottom
    path.quadraticBezierTo(
      size.width / 6,
      size.height, // Control point for the wave effect
      size.width / 2,
      size.height - 30, // Peak of the wave
    );
    path.quadraticBezierTo(
      size.width * 3 / 4,
      size.height - 60, // Bottom wave curve
      size.width,
      size.height - 40, // Ending wave curve
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
