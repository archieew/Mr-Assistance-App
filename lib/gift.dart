import 'package:flutter/material.dart';
import 'queue.dart';

class GiftPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor:
            Color(0xffcb8aa0),
        title: Text(
          'Select Gift Size',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            buildGiftContainer(context, 'Small', Icons.card_giftcard),
            SizedBox(height: 10),
            buildGiftContainer(context, 'Medium', Icons.card_giftcard),
            SizedBox(height: 10),
            buildGiftContainer(context, 'Large', Icons.card_giftcard),
          ],
        ),
      ),
    );
  }

  Widget buildGiftContainer(
      BuildContext context, String size, IconData iconData) {
    return Container(
      width: 400,
      height: 120,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xffcb8aa0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GiftTypePage(size: size),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Color(0xffcb8aa0),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.centerLeft,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              iconData,
              color: Colors.white,
              size: 48,
            ),
            SizedBox(width: 15),
            Text(
              size,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}

class GiftTypePage extends StatelessWidget {
  final String size;

  GiftTypePage({required this.size});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor:
            Color(0xffcb8aa0),
        title: Text(
          'Select Gift Type for $size Size',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            buildGiftContainer(context, 'Birthday', Icons.cake),
            SizedBox(height: 10),
            buildGiftContainer(context, 'Wedding', Icons.favorite),
            SizedBox(height: 10),
            buildGiftContainer(context, 'Anniversary', Icons.event),
            SizedBox(height: 10),
            buildGiftContainer(context, 'Baptism', Icons.water_drop),
          ],
        ),
      ),
    );
  }

  Widget buildGiftContainer(
      BuildContext context, String giftType, IconData iconData) {
    return Container(
      width: 400,
      height: 120,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xffcb8aa0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QueuePage(tabTitle: giftType),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Color(0xffcb8aa0),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.centerLeft,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              iconData,
              color: Colors.white,
              size: 48,
            ),
            SizedBox(width: 15),
            Text(
              '$giftType Gift',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
