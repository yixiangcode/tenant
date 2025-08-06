import 'package:flutter/material.dart';

class LandlordScreen extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {
      "title": "Manage Tenant",
      "icon": Icons.people,
      "onTap": () {
        // TODO: Go to tenant screen
      }
    },
    {
      "title": "Manage Property",
      "icon": Icons.home_work,
      "onTap": () {
        // TODO: Go to property screen
      }
    },
    {
      "title": "Chat",
      "icon": Icons.mark_unread_chat_alt,
      "onTap": () {
        // TODO: Go to chat screen
      }
    },
    {
      "title": "Income",
      "icon": Icons.attach_money,
      "onTap": () {
        // TODO: Go to income screen
      }
    },
    {
      "title": "Notifications",
      "icon": Icons.notifications,
      "onTap": () {
        // TODO: Go to notification screen
      }
    },
    {
      "title": "Logout",
      "icon": Icons.logout,
      "onTap": () {
        // TODO: Log out
      }
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyTenant Admin Panel", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: menuItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // two columns
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            final item = menuItems[index];
            return GestureDetector(
              onTap: item['onTap'],
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(2, 2),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(item['icon'], size: 40, color: Colors.indigo),
                    SizedBox(height: 12),
                    Text(item['title'],
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
