import 'package:flutter/material.dart';
import 'property_page.dart';

class LandlordPage extends StatelessWidget {
  // This list no longer contains the onTap functions.
  final List<Map<String, dynamic>> menuItems = [
    {
      "title": "Manage Tenant",
      "icon": Icons.people,
    },
    {
      "title": "Manage Property",
      "icon": Icons.home_work,
    },
    {
      "title": "Chat",
      "icon": Icons.mark_unread_chat_alt,
    },
    {
      "title": "Income",
      "icon": Icons.attach_money,
    },
    {
      "title": "Notifications",
      "icon": Icons.notifications,
    },
    {
      "title": "Logout",
      "icon": Icons.logout,
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
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 1,
          ),
          itemBuilder: (BuildContext context, int index) {
            final item = menuItems[index];

            // A helper function to handle navigation based on the item title
            void handleTap() {
              switch (item['title']) {
                case "Manage Property":
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PropertyPage(ownerId: "123")),
                  );
                  break;
                case "Manage Tenant":
                // TODO: Navigate to tenant screen
                  break;
                case "Chat":
                // TODO: Navigate to chat screen
                  break;
                case "Income":
                // TODO: Navigate to income screen
                  break;
                case "Notifications":
                // TODO: Navigate to notification screen
                  break;
                case "Logout":
                // TODO: Handle logout logic
                  break;
              }
            }

            return GestureDetector(
              onTap: handleTap,
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