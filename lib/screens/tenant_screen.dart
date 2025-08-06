import 'package:flutter/material.dart';

class TenantScreen extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {
      "title": "Upload Document",
      "icon": Icons.upload_file,
      "onTap": () {
        // TODO: Go to upload screen
      }
    },
    {
      "title": "View Document",
      "icon": Icons.article,
      "onTap": () {
        // TODO: Go to document screen
      }
    },
    {
      "title": "Report Problem",
      "icon": Icons.build_circle,
      "onTap": () {
        // TODO: Go to report screen
      }
    },
    {
      "title": "Owing Records",
      "icon": Icons.attach_money,
      "onTap": () {
        // TODO: Go to owing screen
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
        title: Text("MyTenant", style: TextStyle(color: Colors.white)),
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
