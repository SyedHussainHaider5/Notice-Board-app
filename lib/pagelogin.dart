import 'package:flutter/material.dart';
import 'userview.dart';
void main() {
  runApp(NoticeBoardApp());
}

class NoticeBoardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdminLoginPage(),
    );
  }
}

class AdminLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AdminHomeScreen()),
            );
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}

class AdminHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Home'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/custom.jpg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            ListTile(
              title: Text(
                'Doo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                'Role: Department Officer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Perform edit operation for Doo
                    },
                    child: Icon(Icons.edit),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      // Perform delete operation for Doo
                    },
                    child: Icon(Icons.delete),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'Teacher',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                'Role: Teacher',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Perform edit operation for Teacher
                    },
                    child: Icon(Icons.edit),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      // Perform delete operation for Teacher
                    },
                    child: Icon(Icons.delete),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'FYP Committee Head',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                'Role: FYP Committee Head',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Perform edit operation for FYP Committee Head
                    },
                    child: Icon(Icons.edit),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      // Perform delete operation for FYP Committee Head
                    },
                    child: Icon(Icons.delete),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'Time Table Incharge',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                'Role: Time Table Incharge',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Perform edit operation for Time Table Incharge
                    },
                    child: Icon(Icons.edit),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      // Perform delete operation for Time Table Incharge
                    },
                    child: Icon(Icons.delete),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'Toggle User App Visibility',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                'Control the visibility of the user app',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              trailing: Switch(
                value: true, // Replace with the actual visibility state
                onChanged: (bool value) {
                  // Perform visibility toggle operation
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Perform add operation for a new role
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
