import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(NoticeBoardApp());
}

class NoticeBoardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: StudentNoticeBoard(),
    );
  }
}

class StudentNoticeBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notice Board'),
        backgroundColor: Colors.blue,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.admin_panel_settings),
            onPressed: () {
              // Handle admin button press
              // Navigate to the LoginScreen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/noticepic.jpg'), // Replace with your own background image path
            fit: BoxFit.cover,
          ),
        ),
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                indicatorColor: Colors.blue,
                tabs: [
                  Tab(
                    child: Text(
                      'All Notices',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Important Notices',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    // All Notices Tab
                    Container(
                      color: Colors.transparent,
                      child: ListView(
                        children: [
                          NoticeCard(
                            title: 'Notice 1',
                            subtitle: 'Lorem ipsum dolor sit amet',
                            color: Colors.blue,
                            onTap: () {
                              // Handle notice details or navigate to a detailed view
                              // You can show a dialog or navigate to a new screen to display the details.
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Notice 1 Details'),
                                    content: Text('Details of Notice 1'),
                                    actions: [
                                      TextButton(
                                        child: Text('Close'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                          NoticeCard(
                            title: 'Notice 2',
                            subtitle: 'Lorem ipsum dolor sit amet',
                            color: Colors.blue,
                            onTap: () {
                              // Handle notice details or navigate to a detailed view
                              // You can show a dialog or navigate to a new screen to display the details.
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Notice 2 Details'),
                                    content: Text('Details of Notice 2'),
                                    actions: [
                                      TextButton(
                                        child: Text('Close'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                          // Add more notices here
                        ],
                      ),
                    ),
                    // Important Notices Tab
                    Container(
                      color: Colors.transparent,
                      child: ListView(
                        children: [
                          NoticeCard(
                            title: 'Important Notice 1',
                            subtitle: 'Lorem ipsum dolor sit amet',
                            color: Colors.orange,
                            onTap: () {
                              // Handle notice details or navigate to a detailed view
                              // You can show a dialog or navigate to a new screen to display the details.
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Important Notice 1 Details'),
                                    content: Text('Details of Important Notice 1'),
                                    actions: [
                                      TextButton(
                                        child: Text('Close'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                          NoticeCard(
                            title: 'Important Notice 2',
                            subtitle: 'Lorem ipsum dolor sit amet',
                            color: Colors.orange,
                            onTap: () {
                              // Handle notice details or navigate to a detailed view
                              // You can show a dialog or navigate to a new screen to display the details.
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Important Notice 2 Details'),
                                    content: Text('Details of Important Notice 2'),
                                    actions: [
                                      TextButton(
                                        child: Text('Close'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                          // Add more important notices here
                        ],
                      ),
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

class NoticeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final VoidCallback onTap;

  const NoticeCard({
    required this.title,
    required this.subtitle,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        onTap: onTap,
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        leading: Icon(
          Icons.info_outline,
          color: Colors.white,
        ),
      ),
    );
  }
}
