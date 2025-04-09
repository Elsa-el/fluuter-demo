import 'package:demo/models/apiservice.dart';
import 'package:demo/models/usermodel.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  late Future<User> futureUser;
  int currentUserId = 1;

  @override
  void initState() {
    super.initState();
    futureUser = fetchUser(currentUserId); // Start with ID 1
  }

  void loadUser(int id) {
    setState(() {
      currentUserId = id;
      futureUser = fetchUser(currentUserId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Info')),
      body: FutureBuilder<User>(
        future: futureUser,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: ${snapshot.data!.name}'),
                  Text('Email: ${snapshot.data!.email}'),
                  Text('ID: ${snapshot.data!.id}'),
                   //Text('address: ${snapshot.data!.address}'),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed:
                            currentUserId > 1
                                ? () => loadUser(currentUserId - 1)
                                : null, // Disable if ID is 1
                        child: Text('Previous'),
                      ),
                      ElevatedButton(
                        onPressed: () => loadUser(currentUserId + 1),
                        child: Text('Next'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          } else {
            return Center(child: Text('No data'));
          }
        },
      ),
    );
  }
}
