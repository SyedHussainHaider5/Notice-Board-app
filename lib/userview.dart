import 'package:flutter/material.dart';

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
  List<String> notices = [
    'Notice 1',
    'Notice 2',
    'Notice 3',
    'Notice 4',
  ];

  TextEditingController searchController = TextEditingController();
  TextEditingController noticeController = TextEditingController();

  void addNotice(String notice) {
    if (notice.isNotEmpty) {
      notices.add(notice);
      noticeController.clear();
    }
  }

  void deleteNotice(String notice) {
    notices.remove(notice);
  }

  void updateNotice(String oldNotice, String newNotice) {
    int index = notices.indexOf(oldNotice);
    if (index != -1) {
      notices[index] = newNotice;
    }
  }

  List<String> searchNotices(String query) {
    return notices.where((notice) => notice.contains(query)).toList();
  }

  void toggleNoticeVisibility() {
    // Perform visibility toggle operation
  }

  void printAllNotices() {
    print(notices);
  }

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
                  toggleNoticeVisibility();
                },
              ),
            ),
            ListTile(
              title: Text(
                'Notices',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              trailing: IconButton(
                icon: Icon(Icons.print),
                onPressed: () {
                  printAllNotices();
                },
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: notices.length,
              itemBuilder: (context, index) {
                final notice = notices[index];
                return ListTile(
                  title: Text(notice),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      deleteNotice(notice);
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Add Notice',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: TextField(
                controller: noticeController,
                decoration: InputDecoration(
                  hintText: 'Enter notice',
                ),
              ),
              trailing: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  addNotice(noticeController.text);
                },
              ),
            ),
            ListTile(
              title: Text(
                'Search Notices',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Enter search query',
                ),
              ),
              trailing: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  List<String> searchResults = searchNotices(searchController.text);
                  // Handle the search results
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
