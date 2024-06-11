import 'package:flutter/material.dart';
import 'package:primaxapp/login_page.dart';

class HomePage extends StatelessWidget {
  final String userName = "John Doe"; // Placeholder for logged-in user name

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          // IconButton(
          //   icon: Icon(Icons.logout),
          //   onPressed: () {
          //     // Handle logout logic here
          //   },
          // ),
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Navigate back to the login page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(userName),
              accountEmail: Text('john.doe@example.com'), // Placeholder email
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  userName[0],
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                // Handle profile tap
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle settings tap
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome, $userName',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            _buildAlertCard(
              context,
              'Vaccination Alert',
              'Vaccinations for 20 chickens are due in 3 days.',
              Icons.vaccines,
            ),
            SizedBox(height: 10),
            _buildAlertCard(
              context,
              'Stock Alert',
              'Chicken feed stock is low. Only 5 bags remaining.',
              Icons.warning,
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the reports page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReportsPage()),
                  );
                },
                child: Text('Go to Reports'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAlertCard(
      BuildContext context, String title, String message, IconData icon) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.orange, size: 40),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(message),
      ),
    );
  }
}

class ReportsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reports'),
      ),
      body: Center(
        child: Text('Reports Page Content'),
      ),
    );
  }
}
