import 'package:flutter/material.dart';
import 'package:group9/warranty.dart';
import 'queue.dart';

class ReturnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffcb8aa0), // Background color of the app bar
        title: Text(
          'Select the product you want to return',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        // Make the back button white
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              '',
              style: TextStyle(fontSize: 20, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          OptionContainer(
            text: 'Clothing',
            icon: Icons.shopping_bag,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QueuePage(tabTitle: 'Clothing')),
              );
            },
          ),
          OptionContainer(
            text: 'Furniture',
            icon: Icons.weekend,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WarrantyPage()),
              );
            },
          ),
          OptionContainer(
            text: 'Accessories',
            icon: Icons.accessibility,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WarrantyPage()),
              );
            },
          ),
          OptionContainer(
            text: 'Beverage',
            icon: Icons.local_cafe,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QueuePage(tabTitle: 'Beverage')),
              );
            },
          ),
        ],
      ),
    );
  }
}

class OptionContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  OptionContainer(
      {required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(24),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        decoration: BoxDecoration(
          color: Color(0xffcb8aa0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.center, // Align children vertically centered
          children: [
            Icon(icon, color: Colors.white, size: 40),
            SizedBox(width: 10), // Add some space between icon and text
            Text(
              text,
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
